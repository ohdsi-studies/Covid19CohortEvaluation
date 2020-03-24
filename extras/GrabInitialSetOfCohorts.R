library(ROhdsiWebApi)

baseUrl <- Sys.getenv("baseUrl")


getCohortsFromEstimation <- function(estimationId, baseUrl = baseUrl) {
  estimation <- getEstimation(estimationId = estimationId, baseUrl = baseUrl)
  cohorts <- lapply(estimation$cohortDefinitions, tibble::as_tibble)
  return(dplyr::bind_rows(cohorts))
}

estimationIds <- c(122, 123, 124)
cohorts <- lapply(estimationIds, getCohortsFromEstimation, baseUrl = baseUrl)
cohorts <- dplyr::bind_rows(cohorts)
cohorts <- unique(cohorts)
cohorts$name <- gsub("\\[.*\\] ", "", cohorts$name)
cohorts$atlasName <- cohorts$name
cohorts$name <- gsub(" events$", "", gsub(" with prior.*", "", gsub("Persons? with ", "", gsub("New users of ", "", cohorts$name))))
cohorts$name <- gsub("^_|_$", "", gsub("__", "_", gsub("[-, -]", "_", gsub("\\(.*\\)", "", cohorts$name))))
cohorts$name <- SqlRender::snakeCaseToCamelCase(cohorts$name)
cohorts$atlasId <- cohorts$id
cohorts$cohortId <- cohorts$id
cohorts$id <- NULL

readr::write_csv(cohorts, "inst/settings/CohortsToCreate.csv")

