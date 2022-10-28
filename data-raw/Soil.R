## code to prepare `Forage quality` dataset goes here
soil_raw<-readr::read_csv("data-raw/Soil.csv")
head(soil_raw)
Soil<-soil_raw[!apply(soil_raw == "", 1, all),]
usethis::use_data(Soil, overwrite = TRUE)
#To add data documentation
usethis::use_r("Soil")


