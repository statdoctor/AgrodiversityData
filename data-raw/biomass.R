biomass_raw<-readr::read_csv("data-raw/Biomass.csv")
head(biomass_raw)
library(dplyr)
biomass_raw<-biomass_raw%>% 
  mutate(HARVEST_DATE = as.Date(HARVEST_DATE, format = "%d/%m/%Y"))
Biomass1<-biomass_raw[!apply(biomass_raw == "", 1, all),]# To remove full empty rows 
usethis::use_data(Biomass1,overwrite = T)
usethis::use_r("Biomass1")
class(Biomass1$HARVEST_DATE)
