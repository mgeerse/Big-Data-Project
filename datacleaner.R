# This file serves to lcean the data from the harvestdatafile and from the climatedatafile.
options(digits=9)

# Assign datatypes to HarvestData
HarvestData$plant<-as.numeric(HarvestData$Plant.number)
HarvestData$date<-as.Date(HarvestData$date,format='%d/%m/%Y')
HarvestData$truss<-as.numeric(HarvestData$Truss.number)
HarvestData$brix<-as.numeric(HarvestData$Brix..Number.)
HarvestData$diameter<-as.numeric(HarvestData$Diameter.of.fruits..mm.)
HarvestData$fruits<-as.numeric(HarvestData$Number.of.fruits..Number.)
HarvestData$weightperfruit<-as.numeric(HarvestData$Weight.per.fruit..gr.)
HarvestData$freshweight<-as.numeric(HarvestData$Fresh.weight..gr.)
HarvestData$row_number<-NULL
HarvestData$Plant.number<-NULL
HarvestData$Truss.number<-NULL
HarvestData$Brix..Number.<-NULL
HarvestData$Diameter.of.fruits..mm.<-NULL
HarvestData$Number.of.fruits..Number.<-NULL
HarvestData$Weight.per.fruit..gr.<-NULL
HarvestData$Fresh.weight..gr.<-NULL

print("HarvestData cleaned up.")

# Assign datatypes to ClimateData
ClimateData$date<-as.Date(ClimateData$date,format='%d-%m-%Y')
ClimateData$truss<-as.numeric(ClimateData$Truss.number)
("ClimateData cleaned up.")

# Assign datatypes to IrrigationData1
IrrigationData1$date<-as.Date(ClimateData$date,format='%d-%m-%Y')
("IrrigationData1 cleaned up.")

