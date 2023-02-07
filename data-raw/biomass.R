rm(list=ls())
library(readr)
biomass_raw<-read.csv("data-raw/Biomass.csv")
head(biomass_raw)
library(dplyr)
biomass_raw<-biomass_raw%>% 
  mutate(Harvest_dt = as.Date(Harvest_dt, format = "%d-%m-%Y"))
Biomass1<-biomass_raw[!apply(biomass_raw == "", 1, all),]# To remove full empty rows 
write.csv(Biomass1,"data-raw/Biomass1.csv")
usethis::use_data(Biomass1,overwrite = T)
usethis::use_r("Biomass1")

