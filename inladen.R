# Data inladen
ClimateData<-read.csv(climatedatafile, header=TRUE , sep=";")
print("Climate data loaded in.")
HarvestData<-read.csv(harvestdatafile, header=TRUE , sep=",")
print("Harvest data loaded in.")