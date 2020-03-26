library(OhdsiSharing)

keyFileName <- "c:/home/keyFiles/study-coordinator-covid19.dat"
userName <- "study-coordinator-covid19"
localFolder <- "s:/Covid19CohortEvaluation"
# dir.create(localFolder)

# Download results -----------------------------------------------------------
connection <- sftpConnect(keyFileName, userName)
# sftpMkdir(connection, "cohortEvaluation")
sftpCd(connection, "cohortEvaluation")
files <- sftpLs(connection) 
sftpGetFiles(connection, files$fileName, localFolder = localFolder)

# DANGER!!!
sftpRm(connection, files$fileName)

sftpDisconnect(connection)

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
  # launchDiagnosticsExplorer(groupFolder)
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
