# code to prepare 'combined' dataset goes here
# It is the combination of Biomass2, Weather2, soil and selected variables from site.
# First select important variables from site data.
Site<-readr::read_csv("data-raw/Site.csv")
head(Site)
library(dplyr)
attach(Site)
site_n<-Site%>% select(SITE,Location:Long_ew,Mixture_type,Sowing_method,Sep_method)
View(site_n)
Bio<-readr::read_csv("data-raw/Biomass2.csv")
View(Bio)
weath<-readr::read_csv("data-raw/Weather2.csv")
View(weath)
soil<-readr::read_csv("data-raw/soil.csv")
View(soil)
#Combine biomass 2 and site
n1<-left_join(Bio,site_n,by="SITE")
View(n1)

#relocate(emp_id, .before = name)#To change the order of the variable
n2<-n1%>%relocate(Location:Long_ew,.after = Country)
View(n2)

#Combine n2 with soil
n3<-left_join(n2,soil,by="SITE")
View(n3)

#combine n3 with weather
weath1<-weath%>%select(-Year)
View(weath1)
n4<-left_join(n3,weath,by=c("SITE","Year"))
View(n4)
#Combine n4 with annual forage quality
Forage2<-readr::read_csv("data-raw/Forage2.csv")
View(Forage2)
Forage3<-Forage2%>%select(-Country,-Nh)
n5<-left_join(n4,Forage3,by=c("SITE","Year","Plot"))
View(n5)

Combined<-n5
write.csv(Combined,"data-raw/Combined.csv")
usethis::use_data(Combined,overwrite = T)
usethis::use_r("Combined")


