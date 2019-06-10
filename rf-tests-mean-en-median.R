# random Forest

BigMedian<-HarvestBigMedianMerged[,-c(1,5)]
PrunaxxMedian<-HarvestPrunaxxMedianMerged[,-c(1,5)]
SmallMedian<-HarvestSmallMedianMerged[,-c(1,5)]
CherryMedian<-HarvestCherryMedianMerged[,-c(1,5)]

BigMean<-HarvestBigMeanMerged[,-c(1,5)]
PrunaxxMean<-HarvestPrunaxxMeanMerged[,-c(1,5)]
SmallMean<-HarvestSmallMeanMerged[,-c(1,5)]
CherryMean<-HarvestCherryMeanMerged[,-c(1,5)]

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=BigMedian,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,BigMedian$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~BigMedian$averageWeight,ylab="probability",col=c("red","green"))

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=PrunaxxMedian,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,PrunaxxMedian$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~PrunaxxMedian$averageWeight,ylab="probability",col=c("red","green"))

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=SmallMedian,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,SmallMedian$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~SmallMedian$averageWeight,ylab="probability",col=c("red","green"))

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=CherryMedian,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,CherryMedian$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~CherryMedian$averageWeight,ylab="probability",col=c("red","green"))

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=BigMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,BigMean$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~BigMean$averageWeight,ylab="probability",col=c("red","green"))

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=PrunaxxMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,PrunaxxMean$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~PrunaxxMean$averageWeight,ylab="probability",col=c("red","green"))

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=SmallMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,SmallMean$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~SmallMean$averageWeight,ylab="probability",col=c("red","green"))

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=CherryMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,CherryMean$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)
windows()
boxplot(rfProbs~CherryMean$averageWeight,ylab="probability",col=c("red","green"))


