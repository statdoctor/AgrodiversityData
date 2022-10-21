## code to prepare `Forage quality` dataset goes here
site_raw<-readr::read_csv("data-raw/Site.csv")
head(site_raw)
Site<-site_raw
Site<-site_raw[!apply(site_raw == "", 1, all),]# To remove full empty rows 
library(dplyr)
Site<-Site%>%filter(!is.na(SITE))
usethis::use_data(Site, overwrite = TRUE)
usethis::use_r("Site")
#To add data documentation
View(site_raw)


