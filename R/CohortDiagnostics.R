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

runCohortDiagnostics <- function(connectionDetails,
                                 cdmDatabaseSchema,
                                 cohortDatabaseSchema = cdmDatabaseSchema,
                                 cohortTable = "cohort",
                                 oracleTempSchema = cohortDatabaseSchema,
                                 outputFolder,
                                 databaseId = "Unknown",
                                 databaseName = "Unknown",
                                 databaseDescription = "Unknown",
                                 runInclusionStatistics,
                                 runIncludedSourceConcepts,
                                 runOrphanConcepts,
                                 runTimeDistributions,
                                 runBreakdownIndexEvents,
                                 runIncidenceRates,
                                 runCohortOverlap,
                                 runCohortCharacterization,
                                 minCellCount = 5) {
  incrementalFolder <- file.path(outputFolder, "RecordKeeping")
  inclusionStatisticsFolder <- file.path(outputFolder, "InclusionStatisticsFolder")
  CohortDiagnostics::runCohortDiagnostics(packageName = "Covid19CohortEvaluation",
                                          connectionDetails = connectionDetails,
                                          cdmDatabaseSchema = cdmDatabaseSchema,
                                          oracleTempSchema = oracleTempSchema,
                                          cohortDatabaseSchema = cohortDatabaseSchema,
                                          cohortTable = cohortTable,
                                          inclusionStatisticsFolder = inclusionStatisticsFolder,
                                          exportFolder = file.path(outputFolder, "diagnosticsExport"),
                                          databaseId = databaseId,
                                          databaseName = databaseName,
                                          databaseDescription = databaseDescription,
                                          runInclusionStatistics = runInclusionStatistics,
                                          runIncludedSourceConcepts = runIncludedSourceConcepts,
                                          runOrphanConcepts = runOrphanConcepts,
                                          runTimeDistributions = runTimeDistributions,
                                          runBreakdownIndexEvents = runBreakdownIndexEvents,
                                          runIncidenceRate = runIncidenceRates,
                                          runCohortOverlap = runCohortOverlap,
                                          runCohortCharacterization = runCohortCharacterization,
                                          minCellCount = minCellCount,
                                          incremental = TRUE,
                                          incrementalFolder = incrementalFolder)
}
