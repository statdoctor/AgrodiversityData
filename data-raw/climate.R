## code to prepare `DATASET` dataset goes here
climate_raw<-readr::read_csv("data-raw/climate.csv")
head(climate_raw)
agroclimate<-climate_raw
usethis::use_data(agroclimate,overwrite = T)
