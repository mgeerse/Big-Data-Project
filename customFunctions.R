# Functions file

# Removes all NA's from a column then returns the mean
MeanNoNA<-function(x){
	x<-na.omit(x)
	(mean(x))
}

MedianNoNA<-function(x){
	x<-na.omit(x)
	(median(x))
}

# Boruta var selection
varSelection<-function(traindata){
  boruta.train <- Boruta(freshweight~., data = na.omit(traindata), doTrace=0)
  plot(boruta.train, xlab = "", xaxt = "n")
  lz<-lapply(1:ncol(boruta.train$ImpHistory),function(i)
    boruta.train$ImpHistory[is.finite(boruta.train$ImpHistory[,i]),i])
  names(lz) <- colnames(boruta.train$ImpHistory)
  Labels <- sort(sapply(lz,median))
  axis(side = 1,las=2,labels = names(Labels),
       at = 1:ncol(boruta.train$ImpHistory), cex.axis = 0.7)
  
  final.boruta <- TentativeRoughFix(boruta.train)
  return(final.boruta$finalDecision)
}

completeHarvestData<-function(data){
  # Set up the traindata
  traindata<-data
  
  # Introduce Missing Values Completely At Random. 0.1 staat voor afwijking
  traindata.missing <- prodNA(traindata, noNA = 0.1)
  
  # Trainen kan niet met datums, weghalen
  traindata.missing$date<-NULL
  
  # Overzicht van de missende data
  # md.pattern(traindata.missing)
  
  # De missende data "seeden"
  # m is het aantal booststraps, meer is langer
  # maxit aantal iteraties, meer islanger
  # method pmm = predictive mean matching, kan ook meer: https://www.rdocumentation.org/packages/mice/versions/2.25/topics/mice, scroll naar "pmm section"
  imputed_Data <- mice(traindata.missing, m=5, maxit = 50, method = 'pmm', seed = 500)
  
  # 2 staat hier voor de boostrap nr, kan 1-10 zijn
  completeData<-complete(imputed_Data,2)
  
  completeData$date<-as.Date(data$date)
  
  return(completeData)
}