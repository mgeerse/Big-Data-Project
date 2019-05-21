rm(list=ls(all=TRUE))
library(foreign)

# Main script file.
# This script should be the only place to run from.
# The first step for any user is to set the working directory below:
setwd("C:\\Users\\Maarten\\OneDrive\\School\\Big-Data-Project")

# Load in the user settings.
source("usersettings.R")

# Load in the data
source("inladen.R")

# Clean the data.
source("datacleaner.R")

# Merge the data
source("merge.R")

