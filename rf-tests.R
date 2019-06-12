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

Big<-HarvestBigMerged[,-c(1,5)]
Prunaxx<-HarvestPrunaxxMerged[,-c(1,5)]
Small<-HarvestSmallMerged[,-c(1,5)]
Cherry<-HarvestCherryMerged[,-c(1,5)]

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=Big,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,Big$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~Big$averageWeight,ylab="probability",col=c("red","green"))

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=Prunaxx,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,Prunaxx$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~Prunaxx$averageWeight,ylab="probability",col=c("red","green"))

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=Small,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,Small$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~Small$averageWeight,ylab="probability",col=c("red","green"))

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=Cherry,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,Cherry$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~Cherry$averageWeight,ylab="probability",col=c("red","green"))

