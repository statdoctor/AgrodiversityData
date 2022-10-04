biomass_raw<-readr::read_csv("data-raw/biomass.csv")
head(biomass_raw)
agrobiomass<-biomass_raw
usethis::use_data(agrobiomass,overwrite = T)
dim(biomass_raw)
