# This file serves to lcean the data from the harvestdatafile and from the climatedatafile.
options(digits=9)

# Assign datatypes to ClimateData and HarvestData
HarvestData$row<-as.numeric(HarvestData$row_number)
HarvestData$plantnr<-as.numeric(HarvestData$plant_number)
HarvestData$date<-as.Date(HarvestData$date,format='%Y-%m-%d')
HarvestData$trussnumber<-as.numeric(HarvestData$truss_number)
HarvestData$brix<-as.numeric(HarvestData$brix)
HarvestData$diameter<-as.numeric(HarvestData$diameter)
HarvestData$fruitnumber<-as.numeric(HarvestData$fruit_number)
HarvestData$weight<-as.numeric(HarvestData$weight)
HarvestData$row_number<-NULL
HarvestData$plant_number<-NULL
HarvestData$truss_number<-NULL
HarvestData$fruit_number<-NULL
HarvestData$row_number<-NULL
print("Harvest Data cleaned up.")

#
ClimateData$date<-as.Date(ClimateData$datum,format='%d-%m-%Y')
ClimateData$ger1 <-as.numeric(as.character(gsub(",",".",ClimateData$ger1)))
ClimateData$ger2<-as.numeric(gsub(",",".",ClimateData$ger2))
ClimateData$stralingssom<-as.numeric(gsub(",",".",ClimateData$stralingssom))
ClimateData$straling<-as.numeric(gsub(",",".",ClimateData$straling))
ClimateData$gem_kastemp<-as.numeric(gsub(",",".",ClimateData$ gem_kastemp))
ClimateData$gem_RV<-as.numeric(gsub(",",".",ClimateData$gem_RV))
ClimateData$ber_verw_t<-as.numeric(gsub(",",".",ClimateData$ber_verw_t ))
ClimateData$ber_vent_t_l<-as.numeric(gsub(",",".",ClimateData$ber_vent_t_l))
ClimateData$ber_buis<-as.numeric(gsub(",",".",ClimateData$ber_buis))
ClimateData$gem_doek_1<-as.numeric(gsub(",",".",ClimateData$gem_doek_1))
ClimateData$gem_doek_2<-as.numeric(gsub(",",".",ClimateData$gem_doek_2))
ClimateData$gem_doek_3<-as.numeric(gsub(",",".",ClimateData$gem_doek_3))
ClimateData$ber_RV<-as.numeric(gsub(",",".",ClimateData$ber_RV))
ClimateData$gem_CO2_conc<-as.numeric(gsub(",",".",ClimateData$gem_CO2_conc))
ClimateData$gem_luw<-as.numeric(gsub(",",".",ClimateData$gem_luw))
ClimateData$gem_wind<-as.numeric(gsub(",",".",ClimateData$ gem_wind))
ClimateData$gem_VD<-as.numeric(gsub(",",".",ClimateData$gem_VD))
ClimateData$straling_2<-as.numeric(gsub(",",".",ClimateData$straling_2))
ClimateData$gem_buis_2<-as.numeric(gsub(",",".",ClimateData$gem_buis_2))
ClimateData$gem_buis<-as.numeric(gsub(",",".",ClimateData$gem_buis))
ClimateData$ber_buis.1<-as.numeric(gsub(",",".",ClimateData$ber_buis.1))
ClimateData$gem_kastemp.1<-as.numeric(gsub(",",".",ClimateData$gem_kastemp.1))
ClimateData$gem_RV.1<-as.numeric(gsub(",",".",ClimateData$gem_RV.1))
ClimateData$ger_toestand<-as.numeric(gsub(",",".",ClimateData$ger_toestand))
ClimateData$ger_toestand.1<-as.numeric(gsub(",",".",ClimateData$ger_toestand.1))
ClimateData$stralingssom_2<-as.numeric(gsub(",",".",ClimateData$stralingssom_2))
ClimateData$straling_3<-as.numeric(gsub(",",".",ClimateData$straling_3))
ClimateData$gem_plant_2<-as.numeric(gsub(",",".",ClimateData$gem_plant_2))
ClimateData$gem_plant_3<-as.numeric(gsub(",",".",ClimateData$gem_plant_3))
print("Climate Data cleaned up.")
#