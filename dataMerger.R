# Merging scipt file
# This file is made to merge klimaatdata and growth harvest data (Reformatted)

system1<-merge(ClimateDataPerDay, IrrigationData1, by.x = "date", by.y = "date")
system2<-merge(ClimateDataPerDay, IrrigationData2, by.x = "date", by.y = "date")

HarvestDataToMerge<-completeHarvestData(HarvestData)

system1<-merge(system1, HarvestDataToMerge, by.x="date", by.y="date")
system2<-merge(system2, HarvestDataToMerge, by.x="date", by.y="date")

trainingData1<-rbind(system1[system1$plant>=400&system1$plant<=411,], system1[system1$plant>=600&system1$plant<=611,])
trainingData2<-rbind(system1[system2$plant>=300&system2$plant<=311,], system2[system1$plant>=500&system2$plant<=511,])