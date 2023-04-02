# code to prepare 'combined' dataset goes here
# It is the combination of Biomass2, Weather2, soil and selected variables from site and Forage 2.
# First select important variables from site data.
site<-readr::read_csv("data-raw/site_info.csv")
head(site)
library(dplyr)
attach(site)
site_n<-site%>%select(site,location:long_ew,mixture_type,sowing_method,sep_method)
View(site_n)
Bio<-readr::read_csv("data-raw/biomass2.csv")
View(Bio)
weath<-readr::read_csv("data-raw/weather2.csv")
View(weath)
soil<-readr::read_csv("data-raw/soil.csv")
View(soil)#relocate(emp_id, .before = name)#To change the order of the variable

#Combine biomass 2 and site
n1<-left_join(Bio,site_n,by="site")
View(n1)
n2<-n1%>%relocate(location:long_ew,.after = country)
View(n2)

#Combine n2 with soil
n3<-left_join(n2,soil,by="site")
View(n3)

#combine n3 with weather
weath1<-weath%>%select(-year)
View(weath1)
n4<-left_join(n3,weath,by=c("site","year"))
View(n4)
#Combine n4 with annual forage quality
Forage2<-readr::read_csv("data-raw/forage2.csv")
View(Forage2)
Forage3<-Forage2%>%select(-country)
n5<-left_join(n4,Forage3,by=c("site","year","plot","an_yield"))
View(n5)

combined<-n5
write.csv(combined,"data-raw/combined.csv")
usethis::use_data(combined,overwrite = T)
usethis::use_r("combined")


