# Sandbox file.

View(HarvestData)
View(ClimateData)
View(ClimateDataPerDay)
View(IrrigationData1)
View(IrrigationData2)

names(merged)

merged<-merge(ClimateDataPerDay, IrrigationData1, by.x = "date", by.y = "date")
merged<-merge(merged, IrrigationData2, by.x = "date", by.y = "date")
View(merged)
merged<-merge(merged, HarvestData, by.x = "date", by.y = "date")
View(merged)
colnames(merged)

MergeAggregated<-aggregate(x = merged, FUN = MeanNoNA, by = list(merged$date))

View(MergeAggregated)

summary(HarvestData)
View(HarvestData)
HarvestData

summary(HarvestDataAggregated)
View(HarvestDataAggregated)
View(ClimateDataAggregated)
HarvestDataAggregated

View(HarvestData)

library(data.table)

# Merged datums dezelfde datum toewijzen als er geoogst is.
# Eindigt bij: #EINDE
# backup<-merged
merged<-backup
View(merged)

harvest_dagen<-unique(HarvestData$date)
class(harvest_dagen)
harvest_dagen<-t(harvest_dagen)
dagen<-ncol(harvest_dagen)

View(harvest_dagen)
View(meting_dagen)

dag<-1
for(row in 1:nrow(merged)){
	if(merged[row, "date"] == meting_dagen[dag]){
		dag<-dag+1
	}
	merged[row, "date"]<-meting_dagen[dag]
}

AggregatedMerge<-aggregate(
x = merged[c("air.humidity", 
"radiation.outside", 
"plant.temperature.small", 
"room.temperature.inside", 
"CO2.amount", 
"plant.temperature.big", 
"Average.Flow.x", 
"Average.EC.x", 
"Average.pH.x", 
"Sum.LitersPerM2.x",
"Sum.Deviation.x",
"Sum.TotalLiters.x",
"Sum.Usage.x",
"drain.percentage.x",
"EC.x",
"pH.x",
"drain.water.amount.x",
"absorb.water.amount.x",
"Average.Flow.y", 
"Average.EC.y", 
"Average.pH.y", 
"Sum.LitersPerM2.y",
"Sum.Deviation.y",
"Sum.TotalLiters.y",
"Sum.Usage.y",
"drain.percentage.y",
"EC.y",
"pH.x",
"drain.water.amount.y",
"absorb.water.amount.y"
)], FUN = mean, by = list(date = merged$date))

finalmerge<-merge(AggregatedMerge, HarvestData, by.x = "date", by.y = "date")
View(finalmerge)
#EINDE

colnames(merged)

	meting_dag<-meting_dagen[dag]
	merged_dag<-merged[row, "date"]
	
	message(sprintf("%s < %s", merged_dag, meting_dag))

	if(merged_dag == meting_dag){
		dag<-dag+1
	}






dag<-1
for(row in 1:nrow(merged)){
	merged_date<-merged[row, "date"]
	meting_date<-meting_dagen[dag]
	
	message(sprintf("%s < %s", merged_date, meting_date))

	if(merged_date == meting_date){
		dag<-dag+1
	}
}










count<-1
for(rownr in 1:nrow(merged)){
	if(as.Date(merged[rownr, "date"]) > meting_dagen[count,]) {
		print(merged[rownr, "date"])
	} else {
		count<-count+1
	}
}

ifelse(strptime(as.Date("2015-12-16"), format = "%Y-%m-%d") < strptime(as.Date("2015-12-17"), format = "%Y-%m-%d"),1,0)










#dagen waarop metingen zijn gedaan
meting_dagen<-unique(HarvestDataAggregated$date)
View(meting_dagen)

# Maak een lijst van alle data tussen begin en eind van metingen
date_list<-seq(min(HarvestDataAggregated$date), max(HarvestDataAggregated$date), by = '1 day')
View(date_list)
date_list<-unique(date_list, HarvestDataAggregated$date)
View(date_list)
class(date_list)

merged<-merge(ClimateDataWeekly, HarvestDataAggregated, by.ClimateDataWeekly="date", by.HarvestDataAggregated="date")

View(ClimateDataWeekly)
View(HarvestDataAggregated)
View(merged)
class(merged)

agg<-aggregate(x = crossed, by=list(dateclimate = crossed$date, dateharvest = crossed$date1), FUN = MeanNoNA)
View(agg)

# Factoren maken op gem_kastemp
ClimateDataAggregated$U<-ifelse(ClimateDataAggregated$gem_kastemp<median(ClimateDataAggregated$gem_kastemp),0,1)
ClimateDataAggregated$U<-as.factor(ClimateDataAggregated$U)
D<-ClimateDataAggregated[,-c(1,5)]
summary(D)

# NNet
library(foreign)
library(caTools)
library(rpart)
library(e1071)
library(rpart.plot)
library(randomForest)
library(nnet)

windows()
nnModel<-nnet(U~ger1+ger2+stralingssom+gem_RV+ber_verw_t+ber_buis,data=D,size=40)
nnProbs<-predict(nnModel)
AUCnn<-colAUC(nnProbs,D$U,alg="ROC",plot=T)
AUCnn
windows()
boxplot(nnProbs~D$U,ylab="probability",col=c("red","green"))

# Logistiche regressie
windows()
glmModel<-glm(U~ger1+ger2+stralingssom+gem_RV+ber_verw_t+ber_buis,data=D,family=binomial)
glmProbs<-predict(glmModel,type="response")
AUCglm<-colAUC(glmProbs,D$U,alg="ROC",plot=T)
AUCglm
summary(glmModel)
windows()
boxplot(glmProbs~F$U,ylab="probability",col=c("red","green"))



View(D)
ClimateDataWeekly$date<-NULL
crossed<-crossing(ClimateDataWeekly, HarvestDataAggregated)
crossed<-unique(crossed)
duplicated(crossed)
View(crossed)














df<-data.frame("date" = date(0), "plantnr" = integer(0))
names(df)<-names(HarvestDataAggregated)
View(df)
for(rownr in 1:nrow(HarvestDataAggregated)){

for(date in meting_dagen$x){
print(date)
}


#transformeer de datum naar +1 dag
date<-HarvestDataAggregated[rownr, ]$date
print(date)
date<-as.Date(date) + 1
print(date)


#print(HarvestDataAggregated[rownr, ]$plantnr)

#print(meting_dagen[which(meting_dagen$x == date)])
#print(lead(meting_dagen$x))



}

df<-merge(HarvestDataAggregated, ClimateDataAggregated)
View(df)
View(HarvestData)
harvestdatacols<-colnames(HarvestData)
print(harvestdatacols)
harvestagg<-function(x){
	for(val in 1:ncol(HarvestData)){
		
	}
}

newdf<-data.frame("date", "plantnr", "row", "brix", "weight", "diameter", "total_sap")
names(newdf)
class(newdf)
View(newdf)
for(rownr in 1:nrow(HarvestDataAggregated)){

newdf$plantnr<-HarvestDataAggregated[rownr, ]$plantnr
newdf$date<-HarvestDataAggregated[rownr, ]$date


	
}




appeneded<-append(date_list, uniques)
View(appended)

HaverstUniques<-unique(HarvestDataAggregated$date)
View(HaverstUniques)

expand(HarvestDataAggregated, date_list, plantnr)
sort(HarvestDataAggregated$date)
View(HarvestDataAggregated)

plantnrs<-HarvestDataAggregated$plantnr
merged<-merge(plantnrs, date_list)
merged$plantnr<-merged$x
merged$date<-merged$y
merged$x<-NULL
merged$y<-NULL
View(merged)
merged<-unique(merged)
merged$row..names<-NULL

class(merged)

crossed<-crossing(date_list, plantnrs)
View(crossed)
class(crossed)

temp_dates<-merge(date_list, HarvestDataAggregated$date)
View(temp_dates)

row(HarvestDataAggregated)
####################
nrow(merged)
for(row in 1:nrow(merged)){
	print(merged[row, "plantnr"])
	for(row in 1:nrow(HarvestDataAggregated)){	
		if(HarvestDataAggregated[row, "date"] > 
	}
}
####################

# Mergen "merged" en HarvestDataAggregated

temp<-merge(merged, HarvestDataAggregated, by.x="plantnr", by.y="plantnr")
temp$date.x<-NULL
class(temp)
group_by(temp, add = FALSE)

View(temp)