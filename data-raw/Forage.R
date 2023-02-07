## code to prepare `Forage quality`dataset goes here
forage_raw<-readr::read_csv("data-raw/Forage.csv")
head(forage_raw)
library(dplyr)
forage_raw<-forage_raw%>% 
  mutate(Harvest_dt = as.Date(Harvest_dt, format = "%m/%d/%Y"))
Forage1<-forage_raw[!apply(forage_raw == "", 1, all),]# To remove full empty rows 
write.csv(Forage1,"data-raw/Forage1.csv")
usethis::use_data(Forage1, overwrite = TRUE)
#To add data documentation
usethis::use_r("Forage1")

