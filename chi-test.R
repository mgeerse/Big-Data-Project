names(trainingData1)
Columns<-names(trainingData1)[2:19]
column <- Columns[1]
trainingData1[,column]

trainingData1$averageWeight<-ifelse(trainingData1$freshweight<mean(trainingData1$freshweight),0,1)
trainingData1$averageWeight<-as.factor(trainingData1$averageWeight)
levels(trainingData1$averageWeight)<-c("Low yield", "high yield")

trainingData2$averageWeight<-ifelse(trainingData2$freshweight<mean(trainingData2$freshweight),0,1)
trainingData2$averageWeight<-as.factor(trainingData2$averageWeight)
levels(trainingData2$averageWeight)<-c("Low yield", "high yield")

for( c in 1:length(Columns)){
  column <- Columns[c]
  #trainingData1 and average Weight
  print(column)
  t<-table(trainingData1$averageWeight,trainingData1[,column])
  print("trainingData1")
  print(chisq.test(t))

  #trainingData2 and average Weight
  t<-table(trainingData2$averageWeight,trainingData2[,column])
  print("trainingData2")
  print(chisq.test(t))
  
}