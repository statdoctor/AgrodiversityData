## code to prepare `DATASET` dataset goes here
rm(list=ls())
climate_raw<-read.csv("data-raw/Climate.csv")
head(climate_raw)
library(dplyr)
climate_raw<-climate_raw%>% 
  mutate(date = as.Date(date, format = "%d-%b-%y"))
weather1<-climate_raw
write.csv(weather1,"data-raw/weather1.csv")
usethis::use_data(weather1,overwrite = T)
usethis::use_r("weather1")
