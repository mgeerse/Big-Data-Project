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

completeOurData<-function(data){
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
  return(completeData)
}