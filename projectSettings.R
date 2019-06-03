# Projectsettings file.

# Custom packages to install:
install.packages("lubridate",repos="https://cran.hafro.is/")
install.packages("ggplot2",repos="https://cran.hafro.is/")
install.packages("dplyr",repos="https://cran.hafro.is/")
install.packages("tidyr",repos="https://cran.hafro.is/")
install.packages("tidyverse",repos="https://cran.hafro.is/")
install.packages("padr",repos="https://cran.hafro.is/")

# load packages
library(foreign)
library(dplyr)
library(tidyr)
library(tidyverse)
library(padr)
library(lubridate)
library(ggplot2)

# Set this to climatedata file name
climatedatafile<-"klimaatdata1.csv"
# Set this to harvestdata file name
harvestdatafile<-"reformatted_data_with_sap_1.csv"
