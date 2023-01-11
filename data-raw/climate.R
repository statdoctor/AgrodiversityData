## code to prepare `DATASET` dataset goes here
climate_raw<-readr::read_csv("data-raw/Climate.csv")
head(climate_raw)
library(dplyr)
climate_raw<-climate_raw%>% 
  mutate(DATE = as.Date(DATE, format = "%d-%b-%y"))
Weather1<-climate_raw

usethis::use_data(Weather1,overwrite = T)
usethis::use_r("Weather1")

