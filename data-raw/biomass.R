biomass_raw<-readr::read_csv("data-raw/Biomass.csv")
head(biomass_raw)
library(dplyr)
biomass_raw<-biomass_raw%>% 
  mutate(HARVEST_DATE = as.Date(HARVEST_DATE, format = "%d/%m/%Y"))
Biomass<-biomass_raw[!apply(biomass_raw == "", 1, all),]# To remove full empty rows 
usethis::use_data(Biomass,overwrite = T)
usethis::use_r("Biomass")
class(Biomass$HARVEST_DATE)
