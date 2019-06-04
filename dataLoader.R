# Data inladen

ClimateData<-read.csv(climatedatafile, header = TRUE, fill=TRUE, sep=";", stringsAsFactors = FALSE)
print("Climate data loaded in.")

HarvestData<-read.csv(harvestdatafile, header = TRUE, fill=TRUE, sep=",", stringsAsFactors = FALSE)
print("Harvest data loaded in.")

IrrigationData1<-read.csv(irrigation_system_1, header = TRUE, fill=TRUE, sep=";", stringsAsFactors = FALSE)
print("IrrigationData1 data loaded in.")

IrrigationData2<-read.csv(irrigation_system_2, header = TRUE, fill=TRUE, sep=";", stringsAsFactors = FALSE)
print("IrrigationData2 data loaded in.")