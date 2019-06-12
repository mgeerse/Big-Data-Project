
Big<-HarvestBigMerged
Prunaxx<-HarvestPrunaxxMerged
Small<-HarvestSmallMerged
Cherry<-HarvestCherryMerged


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
  data=Big,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,Big$averageBrix,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average brix of a big tomato")

# Prunaxx
windows()
rfModel<-randomForest(
  averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=Prunaxx,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,Prunaxx$averageBrix,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average brix of a prunax tomato")

# Small
windows()
rfModel<-randomForest(
  averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=Small,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,Small$averageBrix,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average brix of a small tomato")

# Cherry
windows()
rfModel<-randomForest(
  averageBrix~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=Cherry,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,Cherry$averageBrix,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average brix of a cherry tomato")

### Fruits
# Big
windows()
rfModel<-randomForest(
  averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=Big,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,Big$averageFruits,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average number of fruits of a big tomato")

# Prunaxx
windows()
rfModel<-randomForest(
  averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=Prunaxx,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,Prunaxx$averageFruits,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average number of fruits of a prunaxx tomato")

# Small
windows()
rfModel<-randomForest(
  averageFruits~room.temperature.inside+air.humidity+CO2.amount+radiation.outside+plant.temperature.big+plant.temperature.small+Average.EC+Average.Flow+Average.pH+Sum.LitersPerM2+Sum.Deviation+Sum.TotalLiters+Sum.Usage+drain.percentage+EC+pH+drain.water.amount+absorb.water.amount,
  data=Small,
  ntree=500,importance=TRUE)
rfProbs<-predict(rfModel,type="prob")
AUCrf<-colAUC(rfProbs,Small$averageFruits,alg="ROC",plot=T)[,"High"]
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
AUCrf<-colAUC(rfProbs,Cherry$averageFruits,alg="ROC",plot=T)[,"High"]
AUCrf
windows()
varImpPlot(rfModel,sort=TRUE, main = "variables that have influance on the average number of fruits of a cherry tomato")
###