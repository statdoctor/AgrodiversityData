## code to prepare `Forage quality` dataset goes here
forage_raw<-readr::read_csv("data-raw/forage_quality.csv")
head(forage_raw)
agroforage<-forage_raw
usethis::use_data(agroforage, overwrite = TRUE)
#To add data documentation
usethis::use_r("agroforage")
View(forage_raw)
