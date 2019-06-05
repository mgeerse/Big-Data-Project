finalmerge$soort<-NULL
finalmerge$soort[finalmerge$plant>=300&finalmerge$plant<=311]<-1
finalmerge$soort[finalmerge$plant>=400&finalmerge$plant<=411]<-2
finalmerge$soort[finalmerge$plant>=500&finalmerge$plant<=511]<-3
finalmerge$soort[finalmerge$plant>=600&finalmerge$plant<=611]<-4
finalmerge$soort<-as.factor(finalmerge$soort)
levels(finalmerge$soort)<-c("big", "cherry", "prunaxx", "small")


finalmerge$correctWeight<-NULL
finalmerge$correctWeight[finalmerge$plant>=300&finalmerge$plant<=311]<-182
finalmerge$correctWeight[finalmerge$plant>=400&finalmerge$plant<=411]<-16
finalmerge$correctWeight[finalmerge$plant>=500&finalmerge$plant<=511]<-182
finalmerge$correctWeight[finalmerge$plant>=600&finalmerge$plant<=611]<-91
finalmerge$correctWeight<-as.numeric(finalmerge$correctWeight)

finalmerge$U<-ifelse(finalmerge$fruits*finalmerge$correctWeight<finalmerge$freshweight,0,1)
finalmerge$U<-as.factor(finalmerge$U)
levels(finalmerge$U)<-c("low","high")

D<-finalmerge[,-c(40, 37, 38)]
View(finalmerge)
length(finalmerge)
names(finalmerge)
summary(D)

