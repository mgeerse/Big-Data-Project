# Projectsettings file.

# Custom packages to install:
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

# load packages
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

# Set this to climatedata file name
climatedatafile<-"klimaatdata1.csv"
# Set this to harvestdata file name
harvestdatafile<-"reformatted_data_with_sap_1.csv"
