## code to prepare `Forage quality` dataset goes here
forage_raw<-readr::read_csv("data-raw/Forage.csv")
head(forage_raw)
library(dplyr)
forage_raw<-forage_raw%>% 
  mutate(HARVEST_DATE = as.Date(HARVEST_DATE, format = "%m/%d/%Y"))
Forage<-forage_raw[!apply(forage_raw == "", 1, all),]# To remove full empty rows 
usethis::use_data(Forage, overwrite = TRUE)
#To add data documentation
usethis::use_r("Forage")

