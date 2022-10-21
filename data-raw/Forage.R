## code to prepare `Forage quality` dataset goes here
forage_raw<-readr::read_csv("data-raw/Forage.csv")
head(forage_raw)
Forage<-forage_raw
usethis::use_data(Forage, overwrite = TRUE)
#To add data documentation
usethis::use_r("Forage")
View(forage_raw)
