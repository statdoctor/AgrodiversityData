## code to prepare `biosum` dataset goes here

rm(list=ls())
biomass<-readr::read_csv("data-raw/biomass.csv")
head(biomass)
library(dplyr)
biosum_raw<-biomass%>%group_by(SITE,COUNTRY,YEAR)%>%summarise(across(c(G1_Y,G2_Y,L1_Y,L2_Y,WEED_Y,HARV_YIELD),mean))%>%as.data.frame()
head(biosum_raw)
biosum_raw<-biosum_raw%>%rename("G1_YA"="G1_Y", "G2_YA"="G2_Y", "L1_YA"="L1_Y", "L2_YA"="L2_Y", "WEED_YA"="WEED_Y","HARV_YA"="HARV_YIELD" )
agrobiosum = biosum_raw
write.csv(agrobiosum,"data-raw/agrobiosum.csv")
usethis::use_data(agrobiosum,overwrite = T)
usethis::use_r("agrobiosum")
View(agrobiosum)
