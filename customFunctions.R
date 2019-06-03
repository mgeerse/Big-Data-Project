# Functions file

# Removes all NA's from a column then returns the mean
MeanNoNA<-function(x){
	x<-na.omit(x)
	(mean(x))
}