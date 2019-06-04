# This file serves to lcean the data from the harvestdatafile and from the climatedatafile.
options(digits=9)

# Assign datatypes to ClimateData and HarvestData
HarvestData$plant<-as.numeric(HarvestData$Plant.number)
HarvestData$date<-as.Date(HarvestData$date,format='%d/%m/%Y')
HarvestData$truss<-as.numeric(HarvestData$Truss.number)
HarvestData$brix<-as.numeric(HarvestData$Brix..Number.)
HarvestData$diameter<-as.numeric(HarvestData$Diameter.of.fruits..mm.)
HarvestData$fruits<-as.numeric(HarvestData$Number.of.fruits..Number.)
HarvestData$weightperfruit<-as.numeric(HarvestData$Weight.per.fruit..gr.)
HarvestData$freshweight<-as.numeric(HarvestData$Fresh.weight..gr.)
HarvestData$row_number<-NULL
HarvestData$Plant.number<-NULL
HarvestData$Truss.number<-NULL
HarvestData$Brix..Number.<-NULL
HarvestData$Diameter.of.fruits..mm.<-NULL
HarvestData$Number.of.fruits..Number.<-NULL
HarvestData$Weight.per.fruit..gr.<-NULL
HarvestData$Fresh.weight..gr.<-NULL

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