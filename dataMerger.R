# Merging scipt file
# This file is made to merge klimaatdata and growth harvest data (Reformatted)

merged<-merge(ClimateDataPerDay, IrrigationData1, by.x = "date", by.y = "date")
merged<-merge(merged, IrrigationData2, by.x = "date", by.y = "date")

#View(merged)