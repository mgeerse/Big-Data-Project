# Projectsettings file.

#Set this boolean to TRUE if you want to install the packages
INSTALL_PACKAGES<-FALSE

# Custom packages to install:
if(INSTALL_PACKAGES)
{
  install.packages("foreign",repos="https://cran.hafro.is/")
  install.packages("lubridate",repos="https://cran.hafro.is/")
  install.packages("ggplot2",repos="https://cran.hafro.is/")
  install.packages("dplyr",repos="https://cran.hafro.is/")
  install.packages("tidyr",repos="https://cran.hafro.is/")
  install.packages("tidyverse",repos="https://cran.hafro.is/")
  install.packages("caTools",repos="https://cran.hafro.is/")
  install.packages("rpart",repos="https://cran.hafro.is/")
  install.packages("e1071",repos="https://cran.hafro.is/")
  install.packages("rpart.plot",repos="https://cran.hafro.is/")
  install.packages("randomForest",repos="https://cran.hafro.is/")
  install.packages("nnet",repos="https://cran.hafro.is/")
  install.packages('ranger',repos="https://cran.hafro.is/")
  install.packages('Boruta',repos="https://cran.hafro.is/")
  install.packages('mice',repos="https://cran.hafro.is/")
  install.packages("missForest",repos="https://cran.hafro.is/")
} else {
  print("#### NOTE: Package Installing is disabled. Enable package installing in 'projectSettings.R' ####")
}

# Load in packages
library(foreign)
library(dplyr)
library(tidyr)
library(tidyverse)
library(padr)
library(lubridate)
library(ggplot2)
library(caTools)
library(rpart)
library(e1071)
library(rpart.plot)
library(randomForest)
library(nnet)
library(ranger)
library(Boruta)
library(mice)
library(missForest)

# Set this to climatedata file name
climatedatafile<-"climatedata.csv"
climatedataperdayfile<-"climatedataperday.csv"

# Irrigation system files
irrigation_system_1<-"irrigationsystem1.csv"
irrigation_system_2<-"irrigationsystem2.csv"

# Set this to harvestdata file name
harvestdatafile<-"harvestdata.csv"
