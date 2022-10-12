## code to prepare `Forage quality` dataset goes here
site_raw<-readr::read_csv("data-raw/site_info.csv")
head(site_raw)
agrosite<-site_raw
usethis::use_data(agrosite, overwrite = TRUE)
usethis::use_r("agrosite")
#To add data documentation
View(site_raw)


