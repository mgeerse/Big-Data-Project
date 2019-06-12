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

rownames(HarvestBig) <- c()
#HarvestBig$plant <- NULL
#HarvestBig$truss <- NULL
HarvestBig$soort<-NULL
HarvestBig$weightperfruit <- NULL

rownames(HarvestCherry) <- c()
#HarvestCherry$plant <- NULL
#HarvestCherry$truss <- NULL
HarvestCherry$soort<-NULL
HarvestCherry$weightperfruit <- NULL

rownames(HarvestSmall) <- c()
#HarvestSmall$plant <- NULL
#HarvestSmall$truss <- NULL
HarvestSmall$soort<-NULL
HarvestSmall$weightperfruit <- NULL

rownames(HarvestPrunaxx) <- c()
#HarvestPrunaxx$plant <- NULL
#HarvestPrunaxx$truss <- NULL
HarvestPrunaxx$soort<-NULL
HarvestPrunaxx$weightperfruit <- NULL

HarvestBigMedian<-aggregate(x = HarvestBig[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MedianNoNA, by = list(date = HarvestBig$date))

HarvestPrunaxxMedian<-aggregate(x = HarvestPrunaxx[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MedianNoNA, by = list(date = HarvestPrunaxx$date))

HarvestSmallMedian<-aggregate(x = HarvestSmall[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MedianNoNA, by = list(date = HarvestSmall$date))

HarvestCherryMedian<-aggregate(x = HarvestCherry[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MedianNoNA, by = list(date = HarvestCherry$date))

HarvestBigMean<-aggregate(x = HarvestBig[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MeanNoNA, by = list(date = HarvestBig$date))

HarvestPrunaxxMean<-aggregate(x = HarvestPrunaxx[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MeanNoNA, by = list(date = HarvestPrunaxx$date))

HarvestSmallMean<-aggregate(x = HarvestSmall[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MeanNoNA, by = list(date = HarvestSmall$date))

HarvestCherryMean<-aggregate(x = HarvestCherry[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MeanNoNA, by = list(date = HarvestCherry$date))

HarvestBigMedianMerged <-merge(HarvestBigMedian, system1, by.x = "date", by.y = "date")
HarvestPrunaxxMedianMerged <-merge(HarvestPrunaxxMedian, system1, by.x = "date", by.y = "date")
HarvestSmallMedianMerged <-merge(HarvestSmallMedian, system2, by.x = "date", by.y = "date")
HarvestCherryMedianMerged <-merge(HarvestCherryMedian, system2, by.x = "date", by.y = "date")
HarvestBigMeanMerged <-merge(HarvestBigMean, system1, by.x = "date", by.y = "date")
HarvestPrunaxxMeanMerged <-merge(HarvestPrunaxxMean, system1, by.x = "date", by.y = "date")
HarvestSmallMeanMerged <-merge(HarvestSmallMean, system2, by.x = "date", by.y = "date")
HarvestCherryMeanMerged <-merge(HarvestCherryMean, system2, by.x = "date", by.y = "date")

HarvestBigMedianMerged$averageWeight<-ifelse(HarvestBigMedianMerged$freshweight<mean(HarvestBigMedianMerged$freshweight),0,1)
HarvestBigMedianMerged$averageWeight<-as.factor(HarvestBigMedianMerged$averageWeight)
levels(HarvestBigMedianMerged$averageWeight)<-c("Low yield", "high yield")

HarvestPrunaxxMedianMerged$averageWeight<-ifelse(HarvestPrunaxxMedianMerged$freshweight<mean(HarvestPrunaxxMedianMerged$freshweight),0,1)
HarvestPrunaxxMedianMerged$averageWeight<-as.factor(HarvestPrunaxxMedianMerged$averageWeight)
levels(HarvestPrunaxxMedianMerged$averageWeight)<-c("Low yield", "high yield")

HarvestSmallMedianMerged$averageWeight<-ifelse(HarvestSmallMedianMerged$freshweight<mean(HarvestSmallMedianMerged$freshweight),0,1)
HarvestSmallMedianMerged$averageWeight<-as.factor(HarvestSmallMedianMerged$averageWeight)
levels(HarvestSmallMedianMerged$averageWeight)<-c("Low yield", "high yield")

HarvestCherryMedianMerged$averageWeight<-ifelse(HarvestCherryMedianMerged$freshweight<mean(HarvestCherryMedianMerged$freshweight),0,1)
HarvestCherryMedianMerged$averageWeight<-as.factor(HarvestCherryMedianMerged$averageWeight)
levels(HarvestCherryMedianMerged$averageWeight)<-c("Low yield", "high yield")

###
HarvestBigMeanMerged$averageWeight<-ifelse(HarvestBigMeanMerged$freshweight<mean(HarvestBigMeanMerged$freshweight),0,1)
HarvestBigMeanMerged$averageWeight<-as.factor(HarvestBigMeanMerged$averageWeight)
levels(HarvestBigMeanMerged$averageWeight)<-c("Low yield", "High yield")

HarvestPrunaxxMeanMerged$averageWeight<-ifelse(HarvestPrunaxxMeanMerged$freshweight<mean(HarvestPrunaxxMeanMerged$freshweight),0,1)
HarvestPrunaxxMeanMerged$averageWeight<-as.factor(HarvestPrunaxxMeanMerged$averageWeight)
levels(HarvestPrunaxxMeanMerged$averageWeight)<-c("Low yield", "High yield")

HarvestSmallMeanMerged$averageWeight<-ifelse(HarvestSmallMeanMerged$freshweight<mean(HarvestSmallMeanMerged$freshweight),0,1)
HarvestSmallMeanMerged$averageWeight<-as.factor(HarvestSmallMeanMerged$averageWeight)
levels(HarvestSmallMeanMerged$averageWeight)<-c("Low yield", "High yield")

HarvestCherryMeanMerged$averageWeight<-ifelse(HarvestCherryMeanMerged$freshweight<mean(HarvestCherryMeanMerged$freshweight),0,1)
HarvestCherryMeanMerged$averageWeight<-as.factor(HarvestCherryMeanMerged$averageWeight)
levels(HarvestCherryMeanMerged$averageWeight)<-c("Low yield", "High yield")

####
####
HarvestBigMedianMerged$averageBrix<-ifelse(HarvestBigMedianMerged$brix<mean(HarvestBigMedianMerged$brix),0,1)
HarvestBigMedianMerged$averageBrix<-as.factor(HarvestBigMedianMerged$averageBrix)
levels(HarvestBigMedianMerged$averageBrix)<-c("Low", "High")

HarvestPrunaxxMedianMerged$averageBrix<-ifelse(HarvestPrunaxxMedianMerged$brix<mean(HarvestPrunaxxMedianMerged$brix),0,1)
HarvestPrunaxxMedianMerged$averageBrix<-as.factor(HarvestPrunaxxMedianMerged$averageBrix)
levels(HarvestPrunaxxMedianMerged$averageBrix)<-c("Low", "High")

HarvestSmallMedianMerged$averageBrix<-ifelse(HarvestSmallMedianMerged$brix<mean(HarvestSmallMedianMerged$brix),0,1)
HarvestSmallMedianMerged$averageBrix<-as.factor(HarvestSmallMedianMerged$averageBrix)
levels(HarvestSmallMedianMerged$averageBrix)<-c("Low", "High")

HarvestCherryMedianMerged$averageBrix<-ifelse(HarvestCherryMedianMerged$brix<mean(HarvestCherryMedianMerged$brix),0,1)
HarvestCherryMedianMerged$averageBrix<-as.factor(HarvestCherryMedianMerged$averageBrix)
levels(HarvestCherryMedianMerged$averageBrix)<-c("Low", "High")

###
HarvestBigMeanMerged$averageBrix<-ifelse(HarvestBigMeanMerged$brix<mean(HarvestBigMeanMerged$brix),0,1)
HarvestBigMeanMerged$averageBrix<-as.factor(HarvestBigMeanMerged$averageBrix)
levels(HarvestBigMeanMerged$averageBrix)<-c("Low", "High")

HarvestPrunaxxMeanMerged$averageBrix<-ifelse(HarvestPrunaxxMeanMerged$brix<mean(HarvestPrunaxxMeanMerged$brix),0,1)
HarvestPrunaxxMeanMerged$averageBrix<-as.factor(HarvestPrunaxxMeanMerged$averageBrix)
levels(HarvestPrunaxxMeanMerged$averageBrix)<-c("Low", "High")

HarvestSmallMeanMerged$averageBrix<-ifelse(HarvestSmallMeanMerged$brix<mean(HarvestSmallMeanMerged$brix),0,1)
HarvestSmallMeanMerged$averageBrix<-as.factor(HarvestSmallMeanMerged$averageBrix)
levels(HarvestSmallMeanMerged$averageBrix)<-c("Low", "High")

HarvestCherryMeanMerged$averageBrix<-ifelse(HarvestCherryMeanMerged$brix<mean(HarvestCherryMeanMerged$brix),0,1)
HarvestCherryMeanMerged$averageBrix<-as.factor(HarvestCherryMeanMerged$averageBrix)
levels(HarvestCherryMeanMerged$averageBrix)<-c("Low", "High")

####
####
HarvestBigMedianMerged$averageFruits<-ifelse(HarvestBigMedianMerged$fruits<mean(HarvestBigMedianMerged$fruits),0,1)
HarvestBigMedianMerged$averageFruits<-as.factor(HarvestBigMedianMerged$averageFruits)
levels(HarvestBigMedianMerged$averageFruits)<-c("Low", "High")

HarvestPrunaxxMedianMerged$averageFruits<-ifelse(HarvestPrunaxxMedianMerged$fruits<mean(HarvestPrunaxxMedianMerged$fruits),0,1)
HarvestPrunaxxMedianMerged$averageFruits<-as.factor(HarvestPrunaxxMedianMerged$averageFruits)
levels(HarvestPrunaxxMedianMerged$averageFruits)<-c("Low", "High")

HarvestSmallMedianMerged$averageFruits<-ifelse(HarvestSmallMedianMerged$fruits<mean(HarvestSmallMedianMerged$fruits),0,1)
HarvestSmallMedianMerged$averageFruits<-as.factor(HarvestSmallMedianMerged$averageFruits)
levels(HarvestSmallMedianMerged$averageFruits)<-c("Low", "High")

HarvestCherryMedianMerged$averageFruits<-ifelse(HarvestCherryMedianMerged$fruits<mean(HarvestCherryMedianMerged$fruits),0,1)
HarvestCherryMedianMerged$averageFruits<-as.factor(HarvestCherryMedianMerged$averageFruits)
levels(HarvestCherryMedianMerged$averageFruits)<-c("Low", "High")

###
HarvestBigMeanMerged$averageFruits<-ifelse(HarvestBigMeanMerged$fruits<mean(HarvestBigMeanMerged$fruits),0,1)
HarvestBigMeanMerged$averageFruits<-as.factor(HarvestBigMeanMerged$averageFruits)
levels(HarvestBigMeanMerged$averageFruits)<-c("Low", "High")

HarvestPrunaxxMeanMerged$averageFruits<-ifelse(HarvestPrunaxxMeanMerged$fruits<mean(HarvestPrunaxxMeanMerged$fruits),0,1)
HarvestPrunaxxMeanMerged$averageFruits<-as.factor(HarvestPrunaxxMeanMerged$averageFruits)
levels(HarvestPrunaxxMeanMerged$averageFruits)<-c("Low", "High")

HarvestSmallMeanMerged$averageFruits<-ifelse(HarvestSmallMeanMerged$fruits<mean(HarvestSmallMeanMerged$fruits),0,1)
HarvestSmallMeanMerged$averageFruits<-as.factor(HarvestSmallMeanMerged$averageFruits)
levels(HarvestSmallMeanMerged$averageFruits)<-c("Low", "High")

HarvestCherryMeanMerged$averageFruits<-ifelse(HarvestCherryMeanMerged$fruits<mean(HarvestCherryMeanMerged$fruits),0,1)
HarvestCherryMeanMerged$averageFruits<-as.factor(HarvestCherryMeanMerged$averageFruits)
levels(HarvestCherryMeanMerged$averageFruits)<-c("Low", "High")
