HarvestData$soort<-NULL
HarvestData$soort[HarvestData$plantnr>=300&HarvestData$plantnr<=311]<-1
HarvestData$soort[HarvestData$plantnr>=400&HarvestData$plantnr<=411]<-2
HarvestData$soort[HarvestData$plantnr>=500&HarvestData$plantnr<=511]<-3
HarvestData$soort[HarvestData$plantnr>=600&HarvestData$plantnr<=611]<-4
HarvestData$soort<-as.factor(HarvestData$soort)
levels(HarvestData$soort)<-c("big", "cherry", "prunaxx", "small")

HarvestData$rij<-NULL
HarvestData$rij[HarvestData$plantnr>=300&HarvestData$plantnr<=311]<-1
HarvestData$rij[HarvestData$plantnr>=400&HarvestData$plantnr<=411]<-2
HarvestData$rij[HarvestData$plantnr>=500&HarvestData$plantnr<=511]<-3
HarvestData$rij[HarvestData$plantnr>=600&HarvestData$plantnr<=611]<-4
HarvestData$rij<-as.factor(HarvestData$rij)
levels(HarvestData$rij)<-c("3", "4", "5", "6")


View(HarvestData)