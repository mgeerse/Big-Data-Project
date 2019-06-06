#backup<-HarvestData
HarvestData<-backup

ClonedHarvestData<-HarvestData
ClonedHarvestData$plant<-NULL
ClonedHarvestData$truss<-NULL
ClonedHarvestData$soort<-NULL

HarvestData$soort<-NULL
HarvestData$soort[HarvestData$plant>=300&HarvestData$plant<=311]<-1
HarvestData$soort[HarvestData$plant>=400&HarvestData$plant<=411]<-2
HarvestData$soort[HarvestData$plant>=500&HarvestData$plant<=511]<-3
HarvestData$soort[HarvestData$plant>=600&HarvestData$plant<=611]<-4
HarvestData$soort<-as.factor(HarvestData$soort)
levels(HarvestData$soort)<-c("big", "cherry", "prunaxx", "small")

#HarvestData$plant<-NULL
#HarvestData$truss<-NULL

BigHarvestData<-data.frame(matrix(ncol=6, nrow = 0))
CherryHarvestData<-data.frame(matrix(ncol=6, nrow = 0))
PrunaxxHarvestData<-data.frame(matrix(ncol=6, nrow = 0))
SmallHarvestData<-data.frame(matrix(ncol=6, nrow = 0))

kolomnamen<-c("date", "brix", "diameter", "fruits", "weightperfruit", "freshweight")
colnames(BigHarvestData)<-kolomnamen
colnames(CherryHarvestData)<-kolomnamen
colnames(PrunaxxHarvestData)<-kolomnamen
colnames(SmallHarvestData)<-kolomnamen

BigHarvestData$date<-as.Date(BigHarvestData$date)
BigHarvestData$brix<-as.numeric(BigHarvestData$brix)
BigHarvestData$diameter<-as.numeric(BigHarvestData$diameter)
BigHarvestData$fruits<-as.numeric(BigHarvestData$fruits)
BigHarvestData$weightperfruit<-as.numeric(BigHarvestData$weightperfruitdate)
BigHarvestData$freshweight<-as.numeric(BigHarvestData$freshweight)

CherryHarvestData$date<-as.Date(CherryHarvestData$date)
CherryHarvestData$brix<-as.numeric(CherryHarvestData$brix)
CherryHarvestData$diameter<-as.numeric(CherryHarvestData$diameter)
CherryHarvestData$fruits<-as.numeric(CherryHarvestData$fruits)
CherryHarvestData$weightperfruit<-as.numeric(CherryHarvestData$weightperfruitdate)
CherryHarvestData$freshweight<-as.numeric(CherryHarvestData$freshweight)

PrunaxxHarvestData$date<-as.Date(PrunaxxHarvestData$date)
PrunaxxHarvestData$brix<-as.numeric(PrunaxxHarvestData$brix)
PrunaxxHarvestData$diameter<-as.numeric(PrunaxxHarvestData$diameter)
PrunaxxHarvestData$fruits<-as.numeric(PrunaxxHarvestData$fruits)
PrunaxxHarvestData$weightperfruit<-as.numeric(PrunaxxHarvestData$weightperfruitdate)
PrunaxxHarvestData$freshweight<-as.numeric(PrunaxxHarvestData$freshweight)

SmallHarvestData$date<-as.Date(SmallHarvestData$date)
SmallHarvestData$brix<-as.numeric(SmallHarvestData$brix)
SmallHarvestData$diameter<-as.numeric(SmallHarvestData$diameter)
SmallHarvestData$fruits<-as.numeric(SmallHarvestData$fruits)
SmallHarvestData$weightperfruit<-as.numeric(SmallHarvestData$weightperfruitdate)
SmallHarvestData$freshweight<-as.numeric(SmallHarvestData$freshweight)

for(i in 1:nrow(HarvestData)){
	if(HarvestData[i,]$soort == "big"){
		BigHarvestData<-rbind(BigHarvestData, ClonedHarvestData[i,])
	}
	else if(HarvestData[i,]$soort == "cherry") {
		CherryHarvestData<-rbind(CherryHarvestData, ClonedHarvestData[i,])
	}
	else if(HarvestData[i,]$soort == "prunaxx") {
		PrunaxxHarvestData<-rbind(PrunaxxHarvestData, ClonedHarvestData[i,])
	}
	else if(HarvestData[i,]$soort == "small") {
		SmallHarvestData<-rbind(SmallHarvestData, ClonedHarvestData[i,])
	}
}

rownames(BigHarvestData) <- c()
rownames(CherryHarvestData) <- c()
rownames(PrunaxxHarvestData) <- c()
rownames(SmallHarvestData) <- c()

View(BigHarvestData)
View(CherryHarvestData)
View(PrunaxxHarvestData)
View(SmallHarvestData)

HDAgg<-aggregate(x = HarvestData[c("plant", "brix", "diameter", "weightperfruit", "fruits", "freshweight")], FUN = median, by = list(date = HarvestData$date), na.action = na.omit)