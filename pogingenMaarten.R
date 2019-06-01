# Sandbox file.

summary(HarvestData)
View(HarvestData)
HarvestData

summary(HarvestDataAggregated)
View(HarvestDataAggregated)
View(ClimateDataAggregated)
HarvestDataAggregated




######hier


for(rownr in 1:nrow(HarvestDataAggregated)){



}


######tothier























#dagen waarop metingen zijn gedaan
meting_dagen<-unique(HarvestDataAggregated$date)
View(meting_dagen)

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


# Maak een lijst van alle data tussen begin en eind van metingen
date_list<-seq(min(HarvestDataAggregated$date), max(HarvestDataAggregated$date), by = '1 day')
View(date_list)
date_list<-unique(date_list, HarvestDataAggregated$date)
View(date_list)
class(date_list)

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