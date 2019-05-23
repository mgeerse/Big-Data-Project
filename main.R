rm(list=ls(all=TRUE))
library(foreign)

### Method toggles ###
# Add a toggle for each test (so they can easily be executed without having to remove/comment code)
runDataCleaner <- TRUE;

### -------------- ###


# Main script file.
# This script should be the only place to run from.
# The first step for any user is to set the working directory below:
setwd("")

# Load in the user settings.
source("usersettings.R")

# Load in the data
source("inladen.R")

# Clean the data.
if(runDataCleaner){ source("datacleaner.R") }

# Merge the data
source("merge.R")

# Perform magic

