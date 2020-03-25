library(OhdsiSharing)

keyFileName <- "c:/home/keyFiles/study-coordinator-covid19.dat"
userName <- "study-coordinator-covid19"

connection <- sftpConnect(keyFileName, userName)

# sftpMkdir(connection, "cohortEvaluation")

