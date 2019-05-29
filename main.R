# Main script file.
# This script should be the only place to run from.
# To start fresh, start from the line below:
rm(list=ls(all=TRUE))
library(foreign)

# Zet in de lijst hieronder je WD als je wilt, scheelt met pulls van de remote:
setwd("C:\\Users\\user\\Desktop\\R programming")

# Load in the projectsettings.
source("projectSettings.R")

# Load in the data
source("dataLoader.R")

View(ClimateData)

# Clean the data.
source("dataCleaner.R") 

View(test)

tjeerd<-function(x){
x<-na.omit(x)
return(mean(x))
}


test<-aggregate(x = ClimateData[c("ger1","ger2","stralingssom","straling","gem_kastemp","gem_RV","ber_verw_t","ber_vent_t_l","ber_buis","gem_buis",
"gem_doek_1","gem_doek_2","gem_doek_3","ber_RV","gem_CO2_conc","gem_luw","gem_wind","gem_VD","straling_2","gem_buis_2","ber_buis","gem_kastemp","gem_RV","ger_toestand","ger_toestand.1",
"stralingssom_2","straling_3","gem_plant_2","gem_plant_3")],
    FUN =tjeerd,by = list(Group.date = ClimateData$date))

warnings()

View(ClimateData)

View(test)

# Sandbox; use this file to test your own softwarecode.
source("sandbox.R")

# Merge the data
source("dataMerger.R")

# Success bois