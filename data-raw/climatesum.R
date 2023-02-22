## code to prepare `Climatesum` dataset goes here
rm(list=ls())
climate_raw<-read.csv("data-raw/weather1.csv")
head(climate_raw)
library(dplyr)
climate_raw<-climate_raw%>% 
  mutate(date = as.Date(date, format = "%d-%m-%Y"))
View(climate_raw)
attach(climate_raw)
climate_raw$precip<-as.numeric(precip,na.rm = TRUE)
climate_raw$air_min<-as.numeric(air_min, na.rm = TRUE)
climate_raw$air_mean<-as.numeric(air_mean, na.rm = TRUE)
climate_raw$air_max<-as.numeric(air_max, na.rm = TRUE)
cli1<-climate_raw
#Daily Precipitation values were summed within each Year for each site
cli2<-cli1%>%group_by(site,year)%>% mutate(an_precip=sum(precip,na.rm = T))
#Daily mean temperature values were averaged within each Year for each site. 
cli3<-cli2%>%group_by(site,year)%>%mutate(an_air_mean=mean(air_mean,na.rm = T))
#The average of the lowest 10 daily minimum temperature values within each Year was also computed for each site.
cli4<-cli3%>%group_by(site,year)%>%arrange(desc(air_max))%>% slice(1:10)%>%mutate(an_air_max=mean(air_max,na.rm = T))
cli5<-cli3%>%group_by(site,year)%>%arrange(air_min)%>% slice(1:10)%>%mutate(an_air_min=mean(air_min,na.rm = T))
#average of the highest 10 daily maximum temperature values within each Year for each site.

#Keep only site, Year and 3 summary variables in cli4
cli6<-cli4%>%select(site,year,an_precip,an_air_mean,an_air_max)
cli7<-unique(cli6)
View(cli7)
cli8<-cli5%>%select(site,year,an_precip,an_air_mean,an_air_min)
cli9<-unique(cli8)
View(cli9)
# merge  cli7 to cli9 
cli10<-left_join(cli9,cli7)
View(cli10)

weather2<-cli10
weather2<-weather2[!apply(weather2 == "", 1, all),]# To remove full empty rows 
write.csv(weather2,"data-raw/weather2.csv")
usethis::use_data(weather2,overwrite = T)
usethis::use_r("weather2")
