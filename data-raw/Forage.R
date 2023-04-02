## code to prepare `Forage quality`dataset goes here
forage_raw<-readr::read_csv("data-raw/Forage.csv")
head(forage_raw)
library(dplyr)
forage_raw<-forage_raw%>% 
  mutate(harvest_dt = as.Date(harvest_dt, format = "%m/%d/%Y"))

# To create a new variable type: Mixture=1 and Monoculture=0
forage_raw<-forage_raw%>%mutate(type=ifelse((g1==1&g2==0&l1==0&l2==0)|(g1==0&g2==1&l1==0&l2==0)|
                                                (g1==0&g2==0&l1==1&l2==0)|(g1==0&g2==0&l1==0&l2==1),0,1))
forage_raw$type=factor(forage_raw$type)
# To create a new variable richness: =1, for monoculture, =2 for 1 dominent, =3 for 2 dominent, =4 for equi proportional. 
forage_raw<-forage_raw%>%mutate(richness=ifelse((forage_raw$e == 0), 1,
                                                  ifelse((forage_raw$e == 0.64|forage_raw$e == 0.2944), 2, 
                                                         ifelse((forage_raw$e == 0.88|forage_raw$e == 0.6666667|forage_raw$e == 0.666666667), 3, 4))))
#levels(biomass_raw$type)=list(Mixture="Mix",Monoculture="Mono")
forage_raw$richness=factor(forage_raw$richness)
View(forage_raw)
forage_raw<-forage_raw%>%relocate(type, .after = dens)
forage_raw<-forage_raw%>%relocate(richness, .after = type)

forage1<-forage_raw[!apply(forage_raw == "", 1, all),]# To remove full empty rows 
write.csv(forage1,"data-raw/forage1.csv")
usethis::use_data(forage1, overwrite = TRUE)
#To add data documentation
usethis::use_r("forage1")

