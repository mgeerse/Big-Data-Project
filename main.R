# Main script file.
# This script should be the only place to run from.
# To start fresh, start from the line below:
rm(list=ls(all=TRUE))

# Zet in de lijst hieronder je WD als je wilt, scheelt met pulls van de remote:
# Maarten - desktop: setwd("C:\\Users\\mgeer\\Documents\\Git\\Big-Data-Project")
# Maarten - laptop: setwd("C:\\Users\\Maarten\\Documents\\Git\\Big-Data-Project")
# Ercan - laptop: setwd("C:\\Users\\user\\Desktop\\R programming")
# Jacco - Laptop: setwd("D:\documenten\Bigdata\Big-Data-Project")
setwd("C:\\Users\\mgeer\\Documents\\Git\\Big-Data-Project")

# Load in the projectsettings.
source("projectSettings.R")
source("customFunctions.R")

# Load in the data
source("dataLoader.R")

# Clean and aggregrate Harvest- and ClimateData.
source("dataCleaner.R") 
source("dataAggregator.R")
source("dataSubstitutor.R")

# Sandbox; use this file to test your own softwarecode.
source("sandbox.R")

# Merge the data
source("dataMerger.R")

# Success bois