## code to prepare `Climatesum` dataset goes here
rm(list=ls())
climate_raw<-read.csv("data-raw/Climate.csv")
head(climate_raw)
library(dplyr)
climate_raw<-climate_raw%>% 
  mutate(Date = as.Date(Date, format = "%d-%b-%y"))
View(climate_raw)
climate_raw$Precip<-as.numeric(Precip,na.rm = TRUE)
climate_raw$Air_min<-as.numeric(Air_min, na.rm = TRUE)
climate_raw$Air_mean<-as.numeric(Air_mean, na.rm = TRUE)
climate_raw$Air_max<-as.numeric(Air_max, na.rm = TRUE)
cli1<-climate_raw
#Daily Precipitation values were summed within each Year for each site
cli2<-cli1%>%group_by(SITE,Year)%>% mutate(Precip_s=sum(Precip,na.rm = T))
#Daily mean temperature values were averaged within each Year for each site. 
cli3<-cli2%>%group_by(SITE,Year)%>%mutate(Air_mean_a=mean(Air_mean,na.rm = T))
#The average of the lowest 10 daily minimum temperature values within each Year was also computed for each site.
cli4<-cli3%>%group_by(SITE,Year)%>%arrange(desc(Air_max))%>% slice(1:10)%>%mutate(Air_max_a=mean(Air_max,na.rm = T))
cli5<-cli3%>%group_by(SITE,Year)%>%arrange(Air_min)%>% slice(1:10)%>%mutate(Air_min_a=mean(Air_min,na.rm = T))
#average of the highest 10 daily maximum temperature values within each Year for each site.

#Keep only site, Year and 3 summary variables in cli4
cli6<-cli4%>%select(SITE,Year,Precip_s,Air_mean_a,Air_max_a)
cli7<-unique(cli6)

cli8<-cli5%>%select(SITE,Year,Precip_s,Air_mean_a,Air_min_a)
cli9<-unique(cli8)

# merge  cli7 to cli9 
cli10<-left_join(cli9,cli7)
View(cli9)

Weather2<-cli10
Weather2<-Weather2[!apply(Weather2 == "", 1, all),]# To remove full empty rows 
write.csv(Weather2,"data-raw/Weather2.csv")
usethis::use_data(Weather2,overwrite = T)
usethis::use_r("Weather2")
