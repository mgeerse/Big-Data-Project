# Data inladen
ClimateData<-read.csv(climatedatafile, header = TRUE, sep=";", stringsAsFactors = FALSE)
print("Climate data loaded in.")
HarvestData<-read.csv(harvestdatafile, header = TRUE, sep=",", stringsAsFactors = FALSE)
print("Harvest data loaded in.")