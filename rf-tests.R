
Big<-HarvestBigMerged[,-c(1,5)]
Prunaxx<-HarvestPrunaxxMerged[,-c(1,5)]
Small<-HarvestSmallMerged[,-c(1,5)]
Cherry<-HarvestCherryMerged[,-c(1,5)]

### weight
# Big
windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=Big,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,Big$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)


# Prunaxx
windows()
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=Prunaxx,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,Prunaxx$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)


# Small
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
rfModel<-randomForest(
		averageWeight~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
		data=Cherry,
		ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")[,"Low yield"]
AUCrf<-colAUC(rfProbs,Cherry$averageWeight,alg="ROC",plot=T)
AUCrf
varImpPlot(rfModel,sort=TRUE)

### Brix
# Big
windows()
rfModel<-randomForest(
  averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=BigMean,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,BigMean$averageBrix,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average brix of a big tomato")

# Prunaxx
windows()
rfModel<-randomForest(
  averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=PrunaxxMean,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,PrunaxxMean$averageBrix,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average brix of a prunax tomato")

# Small
windows()
rfModel<-randomForest(
  averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=SmallMean,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,SmallMean$averageBrix,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average brix of a small tomato")

# Cherry
windows()
rfModel<-randomForest(
  averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=CherryMean,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,CherryMean$averageBrix,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average brix of a cherry tomato")

### Fruits
# Big
windows()
rfModel<-randomForest(
  averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=BigMean,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,BigMean$averageFruits,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average number of fruits of a big tomato")

# Prunaxx
windows()
rfModel<-randomForest(
  averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=PrunaxxMean,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,PrunaxxMean$averageFruits,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average number of fruits of a prunaxx tomato")

# Small
windows()
rfModel<-randomForest(
  averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=SmallMean,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,SmallMean$averageFruits,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average number of fruits of a small tomato")

# Cherry
windows()
rfModel<-randomForest(
  averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=Cherry,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,CherryMean$averageFruits,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average number of fruits of a cherry tomato")
###