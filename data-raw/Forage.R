## code to prepare `Forage quality`dataset goes here
forage_raw<-readr::read_csv("data-raw/Forage.csv")
head(forage_raw)
library(dplyr)
forage_raw<-forage_raw%>% 
  mutate(Harvest_dt = as.Date(Harvest_dt, format = "%m/%d/%Y"))
Forage1<-forage_raw[!apply(forage_raw == "", 1, all),]# To remove full empty rows 
usethis::use_data(Forage1, overwrite = TRUE)
#To add data documentation
usethis::use_r("Forage1")

# Exclude rows that have missing data in a SUBSET of variables
data_count2 <- Forage1 %>%                                    # Count NA by group
  group_by(Country) %>%
  dplyr::summarize(count_na = sum(is.na(N_c)))
View(data_count2)      

# Number of missing: Here Canada=0, Norway_b=0, sweden_c=0 and Iceland_a=2 
data_count2 <- Forage1 %>%                              # Count NA by group
  group_by(Country) %>%
  dplyr::summarize(count_na = sum(is.na(c(Ndf_k,Adf_k))))
View(data_count2)      

fe<-Forage1%>%filter(Country=="Iceland_a" & is.na(N_c))
View(fe)

