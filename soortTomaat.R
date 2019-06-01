HarvestData$soort<-NULL
HarvestData$soort[HarvestData$plantnr>=300&HarvestData$plantnr<=311]<-1
HarvestData$soort[HarvestData$plantnr>=400&HarvestData$plantnr<=411]<-2
HarvestData$soort[HarvestData$plantnr>=500&HarvestData$plantnr<=511]<-3
HarvestData$soort[HarvestData$plantnr>=600&HarvestData$plantnr<=611]<-4
HarvestData$soort<-as.factor(HarvestData$soort)
levels(HarvestData$soort)<-c("big", "cherry", "prunaxx", "small")


View(HarvestData)