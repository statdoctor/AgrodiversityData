rm(list=ls())
library(readr)
biomass_raw<-read.csv("data-raw/Biomass.csv")
head(biomass_raw)
library(dplyr)
biomass_raw<-biomass_raw%>% 
  mutate(harvest_dt = as.Date(harvest_dt, format = "%d-%m-%Y"))
# To create a new variable type: Mixture=1 and Monoculture=0
biomass_raw<-biomass_raw%>%mutate(type=ifelse((g1==1&g2==0&l1==0&l2==0)|(g1==0&g2==1&l1==0&l2==0)|
                                           (g1==0&g2==0&l1==1&l2==0)|(g1==0&g2==0&l1==0&l2==1),0,1))
#levels(biomass_raw$type)=list(Mixture="Mix",Monoculture="Mono")
biomass_raw$type=factor(biomass_raw$type)
View(biomass_raw)
# To create a new variable richness: =1, for monoculture, =2 for 1 dominent, =3 for 2 dominent, =4 for equi proportional. 
biomass_raw<-biomass_raw%>%mutate(richness=ifelse((biomass_raw$e == 0), 1,
                                                               ifelse((biomass_raw$e == 0.64|biomass_raw$e == 0.2944), 2, 
                                                              ifelse((biomass_raw$e == 0.88|biomass_raw$e == 0.6666667|biomass_raw$e == 0.666666667), 3, 4))))
#levels(biomass_raw$type)=list(Mixture="Mix",Monoculture="Mono")
biomass_raw$richness=factor(biomass_raw$richness)
View(biomass_raw)
head(biomass_raw)
biomass_raw<-biomass_raw%>%relocate(type, .after = dens)
biomass_raw<-biomass_raw%>%relocate(richness, .after = type)
biomass1<-biomass_raw[!apply(biomass_raw == "", 1, all),]# To remove full empty rows 
write.csv(biomass1,"data-raw/biomass1.csv")
usethis::use_data(biomass1,overwrite = T)
usethis::use_r("biomass1")

