# Harvest- and ClimateData Aggregator.

print("Aggregating ClimateData")
ClimateDataAggregated<-aggregate(x = ClimateData[c("ger1","ger2","stralingssom","straling","gem_kastemp","gem_RV","ber_verw_t","ber_vent_t_l","ber_buis","gem_buis",
"gem_doek_1","gem_doek_2","gem_doek_3","ber_RV","gem_CO2_conc","gem_luw","gem_wind","gem_VD","straling_2","gem_buis_2","ber_buis","gem_kastemp","gem_RV","ger_toestand","ger_toestand.1",
"stralingssom_2","straling_3","gem_plant_2","gem_plant_3")],
    FUN = MeanNoNA, by = list(date = ClimateData$date))
print("Done.")
#

print("Aggregating HarvestData")
HarvestDataAggregated<-aggregate(x = HarvestData[c("row", "brix", "weight", "diameter", "total_sap")],
    FUN = MeanNoNA, by = list(date = HarvestData$date))
print("Done.")
#

ClimateDataWeekly <- ClimateDataAggregated  %>%
    mutate(date = floor_date(ymd(date), unit = "weeks")) %>%
    group_by(date) %>%
    summarise_all(.funs = mean)