# Main script file.
# This script should be the only place to run from.
# To start fresh, start from the line below:
rm(list=ls(all=TRUE))

# Zet in de lijst hieronder je WD als je wilt, scheelt met pulls van de remote:
# Uncomment de setwd onder jouw naam/device
# Maarten - desktop
#setwd("C:\\Users\\mgeer\\Documents\\Git\\Big-Data-Project")
# Maarten - laptop
#setwd("C:\\Users\\Maarten\\Documents\\Git\\Big-Data-Project")
# Ercan - laptop
#setwd("C:\\Users\\user\\Desktop\\R programming")
# Jacco - Laptop
#setwd("D:\\documenten\\Bigdata\\Big-Data-Project")
# Teije - Laptop
setwd("C:\\Users\\Teije\\Documents\\Big Data Project\\Big-Data-Project")

# Load in the projectsettings.
source("projectSettings.R")
source("customFunctions.R")

# Load in the data
source("dataLoader.R")

# Clean and aggregrate Harvest- and ClimateData.
source("dataCleaner.R")

# Merge the data.
# Data to work with: testData1, testData2
source("dataMerger.R")

# Sandbox; use this file to test your own softwarecode.
# source("sandbox.R")

# Success bois