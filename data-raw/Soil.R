## code to prepare `Forage quality` dataset goes here
soil_raw<-readr::read_csv("data-raw/Soil.csv")
head(soil_raw)
soil<-soil_raw[!apply(soil_raw == "", 1, all),]
write.csv(soil,"data-raw/weather2.csv")
usethis::use_data(soil, overwrite = TRUE)
#To add data documentation
usethis::use_r("soil")


