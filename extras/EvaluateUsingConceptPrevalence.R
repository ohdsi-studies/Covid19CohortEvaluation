library(CohortDiagnostics)
connectionDetails <- createConnectionDetails(dbms = "pdw",
                                             server = Sys.getenv("PDW_SERVER"),
                                             port = Sys.getenv("PDW_PORT"))
oracleTempSchema <- NULL

cdmDatabaseSchema <- "CDM_jmdc_v1063.dbo"
conceptCountsDatabaseSchema <- "scratch.dbo"
conceptCountsTable <- "concept_prevalence_counts"

# Upload concept prevalence data to database -------------------------------------
conceptCounts <- read.table("c:/temp/conceptPrevalence/cnt_all.tsv", header = TRUE, sep = "\t")
colnames(conceptCounts) <- c("concept_id", "concept_count")
conceptCounts$concept_subjects <- conceptCounts$concept_count
conceptCounts <- conceptCounts[!is.na(conceptCounts$concept_id), ]

connection <- DatabaseConnector::connect(connectionDetails)
DatabaseConnector::insertTable(connection = connection, 
                               tableName = paste(conceptCountsDatabaseSchema, conceptCountsTable, sep = "."),
                               data = conceptCounts,
                               dropTableIfExists = TRUE,
                               createTable = TRUE,
                               tempTable = FALSE,
                               oracleTempSchema = oracleTempSchema,
                               progressBar = TRUE,
                               useMppBulkLoad = FALSE)
DatabaseConnector::disconnect(connection)


# Run diagnostics -----------------------------------------------
pathToCsv <- system.file("settings", "CohortGroups.csv", package = "Covid19CohortEvaluation")
cohortGroups <- readr::read_csv(pathToCsv, col_types = readr::cols())
outputFolder <- "s:/Covid19CohortEvaluation/OhdsiConceptPrevalence"
cohortGroups$exportFolder <- file.path(outputFolder, cohortGroups$cohortGroup, "export")
databaseId <- "OHDSI Concept Prevalence"

for (i in 1:nrow(cohortGroups)) {
  ParallelLogger::logInfo("Generating diagnostics for cohort group ", cohortGroups$cohortGroup[i])
  if (!file.exists(cohortGroups$exportFolder[i])) {
    dir.create(cohortGroups$exportFolder[i], recursive = TRUE)
  }
  runCohortDiagnosticsUsingExternalCounts(packageName = "Covid19CohortEvaluation",
                                          cohortToCreateFile = cohortGroups$fileName[i],
                                          connectionDetails = connectionDetails,
                                          cdmDatabaseSchema = cdmDatabaseSchema,
                                          oracleTempSchema = oracleTempSchema,
                                          conceptCountsDatabaseSchema = conceptCountsDatabaseSchema,
                                          conceptCountsTable = conceptCountsTable,
                                          exportFolder = cohortGroups$exportFolder[i],
                                          databaseId = databaseId,
                                          runIncludedSourceConcepts = TRUE,
                                          runOrphanConcepts = TRUE,
                                          minCellCount = 5) 
}
ParallelLogger::logInfo("Combining zip files")
zipName <- file.path(outputFolder, paste0("AllResults_", databaseId, ".zip"))
files <- list.files(cohortGroups$exportFolder, pattern = ".*\\.zip$", full.names = TRUE)
oldWd <- setwd(outputFolder)
DatabaseConnector::createZipFile(zipFile = zipName, files = files)
setwd(oldWd)
ParallelLogger::logInfo("Results are ready for sharing at:", zipName)

keyFileName <- "c:/home/keyFiles/study-data-site-covid19.dat"
userName <- "study-data-site-covid19"
OhdsiSharing::sftpUploadFile(privateKeyFileName = keyFileName,
                             userName = userName,
                             remoteFolder = "cohortEvaluation",
                             fileName = zipName)

