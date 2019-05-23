# Hypothisis tests are defined in this file.

# T-Test
t_test<-function(column1, column2){
	return t.test(ClimateData[column1],ClimateData[column2],var.equal = TRUE)
}

# Chi Square Test
chi_square_test<-function(column1, column2){
	return t.test(ClimateData[column1],ClimateData[column2],var.equal = TRUE)
}

#ANOVA Test
anova_test(column1){
	return ANOVA<-aov(educ~[column1],data=F)
}
