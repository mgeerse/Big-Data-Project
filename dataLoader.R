# Data inladen

ClimateData<-read.csv(climatedatafile, header = TRUE, dec = ",", fill=TRUE, sep=";", stringsAsFactors = FALSE, fileEncoding="UTF-8-BOM")
print("ClimateData loaded in.")

HarvestData<-read.csv(harvestdatafile, header = TRUE, dec = ",", fill = FALSE, sep=";", stringsAsFactors = FALSE, fileEncoding="UTF-8-BOM")
print("HarvestData loaded in.")

IrrigationData1<-read.csv(irrigation_system_1, header = TRUE, fill=TRUE, sep=";", stringsAsFactors = FALSE, fileEncoding="UTF-8-BOM")
print("IrrigationData1 data loaded in.")

IrrigationData2<-read.csv(irrigation_system_2, header = TRUE, fill=TRUE, sep=";", stringsAsFactors = FALSE, fileEncoding="UTF-8-BOM")
print("IrrigationData2 data loaded in.")