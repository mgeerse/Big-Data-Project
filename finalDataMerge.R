# Merged datums dezelfde datum toewijzen als er geoogst is.

# De unique oogstdagen bepalen
harvest_dagen<-unique(HarvestData$date)
# Omzetten naar een matrix 
harvest_dagen<-t(harvest_dagen)

dag<-1
for(row in 1:nrow(merged)){
	if(merged[row, "date"] == harvest_dagen[dag]){
		dag<-dag+1
	}
	merged[row, "date"]<-harvest_dagen[dag]
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
