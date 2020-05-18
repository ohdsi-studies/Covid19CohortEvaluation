library(OhdsiSharing)
library(dplyr)

keyFileName <- "c:/home/keyFiles/study-coordinator-covid19.dat"
userName <- "study-coordinator-covid19"
localFolder <- "s:/Covid19CohortEvaluation"
# dir.create(localFolder)

# Download results -----------------------------------------------------------
connection <- sftpConnect(keyFileName, userName)
# sftpMkdir(connection, "cohortEvaluation")
sftpCd(connection, "cohortEvaluation")
files <- sftpLs(connection) 
print(files)
sftpGetFiles(connection, files$fileName, localFolder = localFolder)

# DANGER!!!
sftpRm(connection, files$fileName)

sftpDisconnect(connection)

# Get an overview of what was uploaded --------------------------------------
files <- list.files(localFolder, "*.zip", full.names = FALSE)

getRunInfo <- function(file) {
  ParallelLogger::logInfo("Extracting information from", file)
  zipFiles <- zip::zip_list(file.path(localFolder, file))

  tempFolder <- tempfile(pattern = "folder")
  nestedZipFile <- zipFiles$filename[1]
  zip::unzip(file.path(localFolder, file), nestedZipFile, exdir = tempFolder)
  
  zip::unzip(file.path(tempFolder, nestedZipFile), "database.csv", exdir = tempFolder)
  
  database <- readr::read_csv(file.path(tempFolder, "database.csv"), col_types = readr::cols())
  unlink(tempFolder, recursive = TRUE)
  return(tibble::tibble(fileName = file,
                        timeStamp = zipFiles$timestamp[1],
                        databaseId = database$database_id,
                        databaseName = database$database_name,
                        description = database$description))
}

runInfo <- purrr::map_df(files, getRunInfo)
runInfo <- runInfo %>%
  arrange(databaseId, desc(timeStamp))

# Extract files --------------------------------------------------------------
files <- list.files(localFolder, "*.zip", full.names = TRUE)
for (file in files) {
  ParallelLogger::logInfo("Extracting from ", file)
  unzip(file, exdir = localFolder)
}

# Premerge data per cohort group ---------------------------------------------
library(CohortDiagnostics)
cohortGroups <- Covid19CohortEvaluation::getCohortGroups()

for (cohortGroup in cohortGroups) {
  groupFolder <- file.path(localFolder, cohortGroup, "export")
  preMergeDiagnosticsFiles(groupFolder)  
}

# Copy to ShinyDeploy --------------------------------------------------------
library(CohortDiagnostics)
cohortGroups <- Covid19CohortEvaluation::getCohortGroups()

for (cohortGroup in cohortGroups) {
  groupFolder <- file.path(localFolder, cohortGroup, "export")
  shinygroupFolder <- file.path(paste0("C:/Users/mschuemi/git/ShinyDeploy/Covid19CohortEvaluation", cohortGroup), "data")
  file.copy(from = file.path(groupFolder, "PreMerged.RData"),
            to = file.path(shinygroupFolder, "PreMerged.RData"),
            overwrite = TRUE)
}
