## code to prepare `Forage quality`dataset goes here
forage_raw<-readr::read_csv("data-raw/Forage.csv")
head(forage_raw)
library(dplyr)
forage_raw<-forage_raw%>% 
  mutate(harvest_dt = as.Date(harvest_dt, format = "%m/%d/%Y"))
forage1<-forage_raw[!apply(forage_raw == "", 1, all),]# To remove full empty rows 
write.csv(forage1,"data-raw/forage1.csv")
usethis::use_data(forage1, overwrite = TRUE)
#To add data documentation
usethis::use_r("forage1")

