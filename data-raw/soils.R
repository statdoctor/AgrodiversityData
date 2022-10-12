## code to prepare `Forage quality` dataset goes here
soil_raw<-readr::read_csv("data-raw/soils.csv")
head(soil_raw)
agrosoil<-soil_raw
usethis::use_data(agrosoil, overwrite = TRUE)
#To add data documentation
View(soil_raw)


