# Sandbox file.
require('lubridate')
HarvestDates <- unique(HarvestData$date, incomparables = FALSE)

summary(HarvestData)
View(HarvestData)
HarvestData

summary(HarvestDataAggregated)
View(HarvestDataAggregated)
HarvestDataAggregated