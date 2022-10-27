## code to prepare `DATASET` dataset goes here
climate_raw<-readr::read_csv("data-raw/Climate.csv")
head(climate_raw)
library(dplyr)
climate_raw<-climate_raw%>% 
  mutate(DATE = as.Date(DATE, format = "%d-%b-%y"))
Climate<-climate_raw

usethis::use_data(Climate,overwrite = T)
usethis::use_r("Climate")

