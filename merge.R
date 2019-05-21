# Merging scipt file
# This file is made to merge klimaatdata and growth harvest data (Reformatted)

merge(ClimateData, HarvestData, ClimateData$date, HarvestData$datum.1)