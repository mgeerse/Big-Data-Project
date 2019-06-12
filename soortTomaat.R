#tomatensoort
HarvestData$soort<-NULL
HarvestData$soort[HarvestData$plant>=300&HarvestData$plant<=311]<-1
HarvestData$soort[HarvestData$plant>=400&HarvestData$plant<=411]<-2
HarvestData$soort[HarvestData$plant>=500&HarvestData$plant<=511]<-3
HarvestData$soort[HarvestData$plant>=600&HarvestData$plant<=611]<-4
HarvestData$soort<-as.factor(HarvestData$soort)
levels(HarvestData$soort)<-c("big", "cherry", "prunaxx", "small")

#splits de data op soort
HarvestBig <-HarvestData[HarvestData$soort == "big", ]
HarvestCherry <- HarvestData[HarvestData$soort == "cherry", ]
HarvestSmall <- HarvestData[HarvestData$soort == "small", ]
HarvestPrunaxx <- HarvestData[HarvestData$soort == "prunaxx", ]

HarvestBigMerged <-merge(HarvestBig, system1, by.x = "date", by.y = "date")
HarvestPrunaxxMerged <-merge(HarvestPrunaxx, system1, by.x = "date", by.y = "date")
HarvestSmallMerged <-merge(HarvestSmall, system2, by.x = "date", by.y = "date")
HarvestCherryMerged <-merge(HarvestCherry, system2, by.x = "date", by.y = "date")

HarvestBigMerged$averageWeight<-ifelse(HarvestBigMerged$freshweight<mean(HarvestBigMerged$freshweight),0,1)
HarvestBigMerged$averageWeight<-as.factor(HarvestBigMerged$averageWeight)
levels(HarvestBigMerged$averageWeight)<-c("Low yield", "high yield")

HarvestPrunaxxMerged$averageWeight<-ifelse(HarvestPrunaxxMerged$freshweight<mean(HarvestPrunaxxMerged$freshweight),0,1)
HarvestPrunaxxMerged$averageWeight<-as.factor(HarvestPrunaxxMerged$averageWeight)
levels(HarvestPrunaxxMerged$averageWeight)<-c("Low yield", "high yield")

HarvestSmallMerged$averageWeight<-ifelse(HarvestSmallMerged$freshweight<mean(HarvestSmallMerged$freshweight),0,1)
HarvestSmallMerged$averageWeight<-as.factor(HarvestSmallMerged$averageWeight)
levels(HarvestSmallMerged$averageWeight)<-c("Low yield", "high yield")

HarvestCherryMerged$averageWeight<-ifelse(HarvestCherryMerged$freshweight<mean(HarvestCherryMerged$freshweight),0,1)
HarvestCherryMerged$averageWeight<-as.factor(HarvestCherryMerged$averageWeight)
levels(HarvestCherryMerged$averageWeight)<-c("Low yield", "high yield")


###
HarvestBigMerged$averageWeight<-ifelse(HarvestBigMerged$freshweight<mean(HarvestBigMerged$freshweight),0,1)
HarvestBigMerged$averageWeight<-as.factor(HarvestBigMerged$averageWeight)
levels(HarvestBigMerged$averageWeight)<-c("Low yield", "High yield")

HarvestPrunaxxMerged$averageWeight<-ifelse(HarvestPrunaxxMerged$freshweight<mean(HarvestPrunaxxMerged$freshweight),0,1)
HarvestPrunaxxMerged$averageWeight<-as.factor(HarvestPrunaxxMerged$averageWeight)
levels(HarvestPrunaxxMerged$averageWeight)<-c("Low yield", "High yield")

HarvestSmallMerged$averageWeight<-ifelse(HarvestSmallMerged$freshweight<mean(HarvestSmallMerged$freshweight),0,1)
HarvestSmallMerged$averageWeight<-as.factor(HarvestSmallMerged$averageWeight)
levels(HarvestSmallMerged$averageWeight)<-c("Low yield", "High yield")

HarvestCherryMerged$averageWeight<-ifelse(HarvestCherryMerged$freshweight<mean(HarvestCherryMerged$freshweight),0,1)
HarvestCherryMerged$averageWeight<-as.factor(HarvestCherryMerged$averageWeight)
levels(HarvestCherryMerged$averageWeight)<-c("Low yield", "High yield")

####
####
HarvestBigMerged$averageBrix<-ifelse(HarvestBigMerged$brix<mean(HarvestBigMerged$brix),0,1)
HarvestBigMerged$averageBrix<-as.factor(HarvestBigMerged$averageBrix)
levels(HarvestBigMerged$averageBrix)<-c("Low", "High")

HarvestPrunaxxMerged$averageBrix<-ifelse(HarvestPrunaxxMerged$brix<mean(HarvestPrunaxxMerged$brix),0,1)
HarvestPrunaxxMerged$averageBrix<-as.factor(HarvestPrunaxxMerged$averageBrix)
levels(HarvestPrunaxxMerged$averageBrix)<-c("Low", "High")

HarvestSmallMerged$averageBrix<-ifelse(HarvestSmallMerged$brix<mean(HarvestSmallMerged$brix),0,1)
HarvestSmallMerged$averageBrix<-as.factor(HarvestSmallMerged$averageBrix)
levels(HarvestSmallMerged$averageBrix)<-c("Low", "High")

HarvestCherryMerged$averageBrix<-ifelse(HarvestCherryMerged$brix<mean(HarvestCherryMerged$brix),0,1)
HarvestCherryMerged$averageBrix<-as.factor(HarvestCherryMerged$averageBrix)
levels(HarvestCherryMerged$averageBrix)<-c("Low", "High")

####
####
HarvestBigMerged$averageFruits<-ifelse(HarvestBigMerged$fruits<mean(HarvestBigMerged$fruits),0,1)
HarvestBigMerged$averageFruits<-as.factor(HarvestBigMerged$averageFruits)
levels(HarvestBigMerged$averageFruits)<-c("Low", "High")

HarvestPrunaxxMerged$averageFruits<-ifelse(HarvestPrunaxxMerged$fruits<mean(HarvestPrunaxxMerged$fruits),0,1)
HarvestPrunaxxMerged$averageFruits<-as.factor(HarvestPrunaxxMerged$averageFruits)
levels(HarvestPrunaxxMerged$averageFruits)<-c("Low", "High")

HarvestSmallMerged$averageFruits<-ifelse(HarvestSmallMerged$fruits<mean(HarvestSmallMerged$fruits),0,1)
HarvestSmallMerged$averageFruits<-as.factor(HarvestSmallMerged$averageFruits)
levels(HarvestSmallMerged$averageFruits)<-c("Low", "High")

HarvestCherryMerged$averageFruits<-ifelse(HarvestCherryMerged$fruits<mean(HarvestCherryMerged$fruits),0,1)
HarvestCherryMerged$averageFruits<-as.factor(HarvestCherryMerged$averageFruits)
levels(HarvestCherryMerged$averageFruits)<-c("Low", "High")
