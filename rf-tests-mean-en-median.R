# random Forest
set.seed(1)

BigMean<-HarvestBigMeanMerged[,-c(1,5)]
PrunaxxMean<-HarvestPrunaxxMeanMerged[,-c(1,5)]
SmallMean<-HarvestSmallMeanMerged[,-c(1,5)]
CherryMean<-HarvestCherryMeanMerged[,-c(1,5)]

### weight
windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=BigMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,BigMean$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=PrunaxxMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,PrunaxxMean$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=SmallMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,SmallMean$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=CherryMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,CherryMean$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

### Brix

windows()
rfModel<-randomForest(
		averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=BigMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,BigMean$averageBrix,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

windows()
rfModel<-randomForest(
		averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=PrunaxxMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,PrunaxxMean$averageBrix,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

windows()
rfModel<-randomForest(
		averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=SmallMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,SmallMean$averageBrix,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

windows()
rfModel<-randomForest(
		averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=CherryMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,CherryMean$averageBrix,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

### Fruits

windows()
rfModel<-randomForest(
		averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=BigMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,BigMean$averageFruits,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

windows()
rfModel<-randomForest(
		averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=PrunaxxMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,PrunaxxMean$averageFruits,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

windows()
rfModel<-randomForest(
		averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=SmallMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,SmallMean$averageFruits,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

windows()
rfModel<-randomForest(
		averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=CherryMean,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,CherryMean$averageFruits,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

###
