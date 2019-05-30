#Functions file

# T-Test
t_test<-function(column1, column2, Data){
	return t.test(Data[column1],Data[column2],var.equal = TRUE)
}

# Chi Square Test
chi_square_test<-function(column1, column2, Data){
	return t.test(Data[column1], ata[column2],var.equal = TRUE)
}

# NOVA Test
anova_test<-function(column1, Data){
	return ANOVA<-aov(Data~[column1],data=F)
}

# Removes all NA's from a column then returns the mean
MeanNoNA<-function(x){
	x<-na.omit(x)
	(mean(x))
}


