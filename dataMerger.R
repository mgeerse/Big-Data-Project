# Merging scipt file
# This file is made to merge klimaatdata and growth harvest data (Reformatted)

system1<-merge(ClimateDataPerDay, IrrigationData1, by.x = "date", by.y = "date")
system2<-merge(ClimateDataPerDay, IrrigationData2, by.x = "date", by.y = "date")
