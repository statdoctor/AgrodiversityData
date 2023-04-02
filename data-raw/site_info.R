## code to prepare `Forage quality` dataset goes here
site_raw<-readr::read_csv("data-raw/site_info.csv")
head(site_raw)
View(site_raw)
site_raw<-site_raw[!apply(site_raw == "", 1, all),]# To remove full empty rows 
library(dplyr)
site_raw<-site_raw%>%filter(!is.na(site))
usethis::use_data(site_raw, overwrite = TRUE)
usethis::use_r("site_raw")
#To add data documentation
View(site_raw)


