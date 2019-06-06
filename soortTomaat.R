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
HarvestBig$plant <- NULL
HarvestBig$truss <- NULL
HarvestBig$soort<-NULL
HarvestBig$weightperfruit <- NULL

rownames(HarvestCherry) <- c()
HarvestCherry$plant <- NULL
HarvestCherry$truss <- NULL
HarvestCherry$soort<-NULL
HarvestCherry$weightperfruit <- NULL

rownames(HarvestSmall) <- c()
HarvestSmall$plant <- NULL
HarvestSmall$truss <- NULL
HarvestSmall$soort<-NULL
HarvestSmall$weightperfruit <- NULL

rownames(HarvestPrunaxx) <- c()
HarvestPrunaxx$plant <- NULL
HarvestPrunaxx$truss <- NULL
HarvestPrunaxx$soort<-NULL
HarvestPrunaxx$weightperfruit <- NULL

HarvestBigAggregated<-aggregate(x = HarvestBig[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MedianNoNA, by = list(date = HarvestBig$date))

HarvestPrunaxxAggregated<-aggregate(x = HarvestPrunaxx[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MedianNoNA, by = list(date = HarvestPrunaxx$date))

HarvestSmallAggregated<-aggregate(x = HarvestSmall[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MedianNoNA, by = list(date = HarvestSmall$date))

HarvestCherryAggregated<-aggregate(x = HarvestCherry[c("brix", "fruits", "diameter", "freshweight")],
    FUN = MedianNoNA, by = list(date = HarvestCherry$date))

HarvestBigMerged <-merge(HarvestBigAggregated, merged, by.x = "date", by.y = "date")
HarvestPrunaxxMerged <-merge(HarvestPrunaxxAggregated, merged, by.x = "date", by.y = "date")
HarvestSmallMerged <-merge(HarvestSmallAggregated, merged, by.x = "date", by.y = "date")
HarvestCherryMerged <-merge(HarvestCherryAggregated, merged, by.x = "date", by.y = "date")
