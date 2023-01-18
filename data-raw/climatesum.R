## code to prepare `Climatesum` dataset goes here
climate_raw<-readr::read_csv("data-raw/Climate.csv")
head(climate_raw)
library(dplyr)
climate_raw<-climate_raw%>% 
mutate(Date = as.Date(Date, format = "%d-%b-%y"))
View(climate_raw)

# count the Site wise missing value in all variables
data_count2 <- climate_raw %>%                                   
  group_by(SITE) %>%
  summarize_each(funs(sum(is.na(.))))
View(data_count2) 


cli1<-climate_raw
#Daily Precipitation values were summed within each Year for each site
cli2<-cli1%>%group_by(SITE,Year)%>%mutate(Precip_s=sum(Precip,na.rm = T))
#Daily mean temperature values were averaged within each Year for each site. 
cli3<-cli2%>%group_by(SITE,Year)%>%mutate(Air_mean_a=mean(Air_mean,na.rm = T))
#The average of the lowest 10 daily minimum temperature values within each Year was also computed for each site.
cli4<-cli3%>%group_by(SITE,Year)%>%arrange(desc(Air_max))%>% slice(1:10)%>%mutate(Max_a=mean(Air_max,na.rm = T))
cli5<-cli3%>%group_by(SITE,Year)%>%arrange(Air_min)%>% slice(1:10)%>%mutate(Min_a=mean(Air_min,na.rm = T))
#average of the highest 10 daily maximum temperature values within each Year for each site.

#Keep only site, Year and 3 summary variables in cli4
cli6<-cli4%>%select(SITE,Year,Precip_s,Air_mean_a,Max_a)
cli7<-unique(cli6)

cli8<-cli5%>%select(SITE,Year,Precip_s,Air_mean_a,Min_a)
cli9<-unique(cli8)

# merge  cli7 to cli9 
cli10<-left_join(cli9,cli7)
View(cli9)


Weather2<-cli10
write.csv(Weather2,"data-raw/Weather2.csv")
usethis::use_data(Weather2,overwrite = T)
usethis::use_r("Weather2")
