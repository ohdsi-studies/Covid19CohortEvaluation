# Make sure to install all dependencies (not needed if already done) -------------------------------

# Prevents errors due to packages being built for other R versions: 
Sys.setenv("R_REMOTES_NO_ERRORS_FROM_WARNINGS" = TRUE)

# When asked to update packages, select '1' ('update all') (could be multiple times)
# When asked whether to install from source, select 'No' (could be multiple times)
install.packages("devtools")
devtools::install_github("ohdsi/OhdsiSharing")
devtools::install_github("ohdsi/CohortDiagnostics")
devtools::install_github("ohdsi-studies/Covid19CohortEvaluation")

# Running the package -------------------------------------------------------------------------------
library(Covid19CohortEvaluation)

# Optional: specify where the temporary files (used by the ff package) will be created:
options(fftempdir = "s:/FFtemp")

# Details for connecting to the server:
connectionDetails <- createConnectionDetails(dbms = "pdw",
                                             server = Sys.getenv("PDW_SERVER"),
                                             user = NULL,
                                             password = NULL,
                                             port = Sys.getenv("PDW_PORT"))

# For Oracle: define a schema that can be used to emulate temp tables:
oracleTempSchema <- NULL

# Details specific to the database:
outputFolder <- "s:/Covid19CohortEvaluation/mdcd" # Be sure to have one outputFolder per database!
cdmDatabaseSchema <- "cdm_ibm_mdcd_v1023.dbo"
cohortDatabaseSchema <- "scratch.dbo"
cohortTable <- "mschuemi_skeleton_mdcd"
databaseId <- "MDCD"
databaseName <- "Truven Health MarketScan® Multi-State Medicaid Database"
databaseDescription <- "Truven Health MarketScan® Multi-State Medicaid Database (MDCD) 
adjudicated US health insurance claims for Medicaid enrollees from multiple states and 
includes hospital discharge diagnoses, outpatient diagnoses and procedures, and outpatient 
pharmacy claims as well as ethnicity and Medicare eligibility. Members maintain their same 
identifier even if they leave the system for a brief period however the dataset lacks lab 
data. [For further information link to RWE site for Truven MDCD."

# Use this to run the evaluations. The results will be stored in a zip file called 
# 'AllResults_<databaseId>.zip in the outputFolder. This can be shared between sites.
execute(connectionDetails = connectionDetails,
        cdmDatabaseSchema = cdmDatabaseSchema,
        cohortDatabaseSchema = cohortDatabaseSchema,
        cohortTable = cohortTable,
        oracleTempSchema = cohortDatabaseSchema,
        outputFolder = outputFolder,
        databaseId = databaseId,
        databaseName = databaseName,
        databaseDescription = databaseDescription,
        cohortGroups = getCohortGroups(),
        createCohorts = TRUE,
        runCohortDiagnostics = TRUE,
        minCellCount = 5) 


