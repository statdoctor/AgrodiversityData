rm(list=ls())
library(readr)
biomass_raw<-read.csv("data-raw/Biomass.csv")
head(biomass_raw)
library(dplyr)
biomass_raw<-biomass_raw%>% 
  mutate(harvest_dt = as.Date(harvest_dt, format = "%d-%m-%Y"))
biomass1<-biomass_raw[!apply(biomass_raw == "", 1, all),]# To remove full empty rows 
write.csv(biomass1,"data-raw/biomass1.csv")
usethis::use_data(biomass1,overwrite = T)
usethis::use_r("biomass1")

