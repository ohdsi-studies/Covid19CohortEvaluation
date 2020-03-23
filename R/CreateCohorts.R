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

createCohorts <- function(connectionDetails,
                          cdmDatabaseSchema,
                          cohortDatabaseSchema,
                          cohortTable,
                          oracleTempSchema,
                          outputFolder) {
  
  incrementalFolder <- file.path(outputFolder, "RecordKeeping")
  inclusionStatisticsFolder <- file.path(outputFolder, "InclusionStatisticsFolder")
  CohortDiagnostics::instantiateCohortSet(connectionDetails = connectionDetails,
                                          cdmDatabaseSchema = cdmDatabaseSchema,
                                          cohortDatabaseSchema = cohortDatabaseSchema,
                                          cohortTable = cohortTable,
                                          oracleTempSchema = oracleTempSchema,
                                          packageName = "Covid19CohortEvaluation",
                                          cohortToCreateFile = "settings/CohortsToCreate.csv",
                                          createCohortTable = TRUE,
                                          generateInclusionStats = TRUE,
                                          inclusionStatisticsFolder = inclusionStatisticsFolder,
                                          incremental = TRUE,
                                          incrementalFolder = incrementalFolder)
}

