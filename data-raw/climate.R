## code to prepare `DATASET` dataset goes here
climate_raw<-readr::read_csv("data-raw/Climate.csv")
head(climate_raw)
Climate<-climate_raw
library(dplyr)
Climate <- Climate %>% 
  mutate(DATE = as.Date(DATE, format = "%d-%b-%y"))
Climate<-climate_raw[!apply(climate_raw == "", 1, all),]
usethis::use_data(Climate,overwrite = T)


