# Copyright 2020 Observational Health Data Sciences and Informatics
#
# This file is part of Covid19CohortEvaluation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


#' Get the list of cohort groups
#'
#' @return
#' A character vector of cohort group names included in this package.
#' 
#' @export
getCohortGroups <- function() {
  pathToCsv <- system.file("settings", "CohortGroups.csv", package = "Covid19CohortEvaluation")
  cohortGroups <- readr::read_csv(pathToCsv, col_types = readr::cols())
  return(cohortGroups$cohortGroup)
}

#' Execute the main cohort evaluation
#'
#' @details
#' This function executes the cohort diagnostics.
#'
#' @param connectionDetails    An object of type \code{connectionDetails} as created using the
#'                             \code{\link[DatabaseConnector]{createConnectionDetails}} function in the
#'                             DatabaseConnector package.
#' @param cdmDatabaseSchema    Schema name where your patient-level data in OMOP CDM format resides.
#'                             Note that for SQL Server, this should include both the database and
#'                             schema name, for example 'cdm_data.dbo'.
#' @param cohortDatabaseSchema Schema name where intermediate data can be stored. You will need to have
#'                             write priviliges in this schema. Note that for SQL Server, this should
#'                             include both the database and schema name, for example 'cdm_data.dbo'.
#' @param cohortTable          The name of the table that will be created in the work database schema.
#'                             This table will hold the exposure and outcome cohorts used in this
#'                             study.
#' @param oracleTempSchema     Should be used in Oracle to specify a schema where the user has write
#'                             priviliges for storing temporary tables.
#' @param outputFolder         Name of local folder to place results; make sure to use forward slashes
#'                             (/). Do not use a folder on a network drive since this greatly impacts
#'                             performance.
#' @param databaseId           A short string for identifying the database (e.g.
#'                             'Synpuf').
#' @param databaseName         The full name of the database (e.g. 'Medicare Claims
#'                             Synthetic Public Use Files (SynPUFs)').
#' @param databaseDescription  A short description (several sentences) of the database.
#' @param cohortGroups         A character vector indicating which cohort groups to evaluate. See 
#'                             \code{getCohortGroups()} for options.
#' @param createCohorts        Create the cohortTable table with the exposure and outcome cohorts?
#' @param runCohortDiagnostics Run the various cohort diagnostics?
#' @param minCellCount         The minimum number of subjects contributing to a count before it can be included 
#'                             in packaged results.
#'
#' @export
execute <- function(connectionDetails,
                    cdmDatabaseSchema,
                    cohortDatabaseSchema = cdmDatabaseSchema,
                    cohortTable = "cohort",
                    oracleTempSchema = cohortDatabaseSchema,
                    outputFolder,
                    databaseId = "Unknown",
                    databaseName = "Unknown",
                    databaseDescription = "Unknown",
                    cohortGroups = getCohortGroups(),
                    createCohorts = TRUE,
                    runCohortDiagnostics = TRUE,
                    minCellCount = 5) {
  if (!file.exists(outputFolder)) {
    dir.create(outputFolder, recursive = TRUE)
  }
  if (!is.null(getOption("fftempdir")) && !file.exists(getOption("fftempdir"))) {
    warning("fftempdir '", getOption("fftempdir"), "' not found. Attempting to create folder")
    dir.create(getOption("fftempdir"), recursive = TRUE)
  }
  ParallelLogger::addDefaultFileLogger(file.path(outputFolder, "cohortDiagnosticsLog.txt"))
  on.exit(ParallelLogger::unregisterLogger("DEFAULT"))
  
  pathToCsv <- system.file("settings", "CohortGroups.csv", package = "Covid19CohortEvaluation")
  temp <- readr::read_csv(pathToCsv, col_types = readr::cols())
  cohortGroups <- temp[temp$cohortGroup %in% cohortGroups, ]
  rm(temp)
  if (nrow(cohortGroups) == 0) {
    stop("No valid cohort groups seleted") 
  }
  cohortGroups$outputFolder <- file.path(outputFolder, cohortGroups$cohortGroup)
  lapply(cohortGroups$outputFolder[!file.exists(cohortGroups$outputFolder)], dir.create, recursive = TRUE)
  cohortGroups$incrementalFolder <- file.path(cohortGroups$outputFolder, "RecordKeeping")
  cohortGroups$inclusionStatisticsFolder <- file.path(cohortGroups$outputFolder, "InclusionStatistics")
  cohortGroups$exportFolder <- file.path(cohortGroups$outputFolder, "Export")
  
  if (createCohorts) {
    for (i in 1:nrow(cohortGroups)) {
      ParallelLogger::logInfo("Creating cohorts for cohort group ", cohortGroups$cohortGroup[i])
      CohortDiagnostics::instantiateCohortSet(connectionDetails = connectionDetails,
                                              cdmDatabaseSchema = cdmDatabaseSchema,
                                              cohortDatabaseSchema = cohortDatabaseSchema,
                                              cohortTable = cohortTable,
                                              oracleTempSchema = oracleTempSchema,
                                              packageName = "Covid19CohortEvaluation",
                                              cohortToCreateFile = cohortGroups$fileName[i],
                                              createCohortTable = TRUE,
                                              generateInclusionStats = TRUE,
                                              inclusionStatisticsFolder = cohortGroups$inclusionStatisticsFolder[i],
                                              incremental = TRUE,
                                              incrementalFolder = cohortGroups$incrementalFolder[i])
      
    }
  }
  
  if (runCohortDiagnostics) {
    for (i in 1:nrow(cohortGroups)) {
      ParallelLogger::logInfo("Running cohort diagnostics for cohort group", cohortGroups$cohortGroup[i])
      CohortDiagnostics::runCohortDiagnostics(packageName = "Covid19CohortEvaluation",
                                              connectionDetails = connectionDetails,
                                              cdmDatabaseSchema = cdmDatabaseSchema,
                                              oracleTempSchema = oracleTempSchema,
                                              cohortDatabaseSchema = cohortDatabaseSchema,
                                              cohortTable = cohortTable,
                                              inclusionStatisticsFolder = cohortGroups$inclusionStatisticsFolder[i],
                                              exportFolder = cohortGroups$exportFolder[i],
                                              databaseId = databaseId,
                                              databaseName = databaseName,
                                              databaseDescription = databaseDescription,
                                              runInclusionStatistics = TRUE,
                                              runIncludedSourceConcepts = FALSE,
                                              runOrphanConcepts = FALSE,
                                              runTimeDistributions = TRUE,
                                              runBreakdownIndexEvents = TRUE,
                                              runIncidenceRate = TRUE,
                                              runCohortOverlap = TRUE,
                                              runCohortCharacterization = TRUE,
                                              minCellCount = minCellCount,
                                              incremental = TRUE,
                                              incrementalFolder = cohortGroups$incrementalFolder[i])
    }
  }
  
  # Combine zip files -------------------------------------------------------------------------------
  ParallelLogger::logInfo("Combining zip files")
  zipName <- file.path(outputFolder, paste0("AllResults_", databaseId, ".zip"))
  files <- list.files(cohortGroups$exportFolder, pattern = ".*\\.zip$", full.names = TRUE)
  oldWd <- setwd(outputFolder)
  on.exit(setwd(oldWd), add = TRUE)
  DatabaseConnector::createZipFile(zipFile = zipName, files = files)
  ParallelLogger::logInfo("Results are ready for sharing at:", zipName)
  
  ParallelLogger::logFatal("Done")
}