# This file serves to lcean the data from the harvestdatafile and from the climatedatafile.

# Data typen toewijzen voor ClimateData en HarvestData
####

View(ClimateData)

ClimateData$row<-as.numeric(ClimateData$row_number)
ClimateData$plantnr<-as.numeric(ClimateData$plant_number)
ClimateData$date<-as.numeric(ClimateData$date)
ClimateData$trussnumber<-as.numeric(ClimateData$truss_number)
ClimateData$brix<-as.numeric(ClimateData$brix)
ClimateData$diameter<-as.numeric(ClimateData$diameter)
ClimateData$fruitnumber<-as.numeric(ClimateData$fruit_number)
ClimateData$weight<-as.numeric(ClimateData$weight)

ClimateData$row_number<-NULL
ClimateData$plant_number<-NULL
ClimateData$truss_number<-NULL
ClimateData$fruit_number<-NULL
ClimateData$row_number<-NULL
print("Climate Data cleaned up.")
####
View(HarvestData)
HarvestData$datum.1<-as.POSIXlt(as.character(HarvestData$datum.1))
HarvestData$ger1 <-as.numeric(HarvestData$ger1)
HarvestData$ger2<-as.numeric(HarvestData$ger2)
HarvestData$stralingssom<-as.numeric(HarvestData$stralingssom)
HarvestData$straling<-as.numeric(HarvestData$straling)
HarvestData$datum2<-as.date(as.POSIXlt(HarvestData$datum2))
HarvestData$gem_kastemp<-as.numeric(HarvestData$gem_kastemp)
HarvestData$gem_RV<-as.numeric(HarvestData$gem_RV)
HarvestData$ber_verw_t<-as.numeric(HarvestData$ber_verw_t )
HarvestData$ber_vent_t_l<-as.numeric(HarvestData$ber_vent_t_l)
HarvestData$ber_buis<-as.numeric(HarvestData$ber_buis)
HarvestData$gem_doek_1<-as.numeric(HarvestData$gem_doek_1)
HarvestData$gem_doek_2<-as.numeric(HarvestData$gem_doek_2)
HarvestData$gem_doek_3<-as.numeric(HarvestData$gem_doek_3)
HarvestData$ber_RV<-as.numeric(HarvestData$ber_RV)
HarvestData$gem_CO2_conc<-as.numeric(HarvestData$gem_CO2_conc)
HarvestData$gem_luw<-as.numeric(HarvestData$gem_luw)
HarvestData$gem_wind<-as.numeric(HarvestData$ gem_wind)
HarvestData$gem_VD<-as.numeric(HarvestData$gem_VD)
HarvestData$straling_2<-as.numeric(HarvestData$straling_2)
HarvestData$datum_3<-as.POSIXlt(as.character(HarvestData$datum_3))
HarvestData$gem_buis_2<-as.numeric(HarvestData$ gem_buis_2)
HarvestData$ber_buis.1<-as.numeric(HarvestData$ber_buis.1)
HarvestData$gem_kastemp.1<-as.numeric(HarvestData$gem_kastemp.1)
HarvestData$gem_RV.1<-as.numeric(HarvestData$gem_RV.1)
HarvestData$ger_toestand<-as.numeric(HarvestData$ger_toestand)
HarvestData$ger_toestand.1<-as.numeric(HarvestData$ger_toestand.1)
HarvestData$stralingssom_2<-as.numeric(HarvestData$stralingssom_2)
HarvestData$straling_3<-as.numeric(HarvestData$straling_3)
HarvestData$gem_plant_2<-as.numeric(HarvestData$gem_plant_2)
HarvestData$gem_plant_3<-as.numeric(HarvestData$gem_plant_3)
print("Harvest Data cleaned up.")
####
