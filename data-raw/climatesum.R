## code to prepare `Climatesum` dataset goes here
climate_raw<-readr::read_csv("data-raw/Climate.csv")
head(climate_raw)
library(dplyr)
climate_raw<-climate_raw%>% 
mutate(DATE = as.Date(DATE, format = "%d-%b-%y"))
View(climate_raw)

# count the Site wise missing value in all variables
data_count2 <- climate_raw %>%                                   
  group_by(SITE) %>%
  summarize_each(funs(sum(is.na(.))))
View(data_count2) 


cli1<-climate_raw
#Daily precipitation values were summed within each year for each site
cli2<-cli1%>%group_by(SITE,YEAR)%>%mutate(PRECIP_S=sum(PRECIP,na.rm = T))
#Daily mean temperature values were averaged within each year for each site. 
cli3<-cli2%>%group_by(SITE,YEAR)%>%mutate(AIR_MEAN_A=mean(AIR_MEAN,na.rm = T))
#The average of the lowest 10 daily minimum temperature values within each year was also computed for each site.
cli4<-cli3%>%group_by(SITE,YEAR)%>%arrange(desc(AIR_MAX))%>% slice(1:10)%>%mutate(MAX_A=mean(AIR_MAX,na.rm = T))
cli5<-cli3%>%group_by(SITE,YEAR)%>%arrange(AIR_MIN)%>% slice(1:10)%>%mutate(MIN_A=mean(AIR_MIN,na.rm = T))
#average of the highest 10 daily maximum temperature values within each year for each site.

#Keep only site, year and 3 summary variables in cli4
cli6<-cli4%>%select(SITE,YEAR,PRECIP_S,AIR_MEAN_A,MAX_A)
cli7<-unique(cli6)

cli8<-cli5%>%select(SITE,YEAR,PRECIP_S,AIR_MEAN_A,MIN_A)
cli9<-unique(cli8)

# merge  cli7 to cli9 
cli10<-left_join(cli9,cli7)
View(cli9)


Climatesum<-cli10
write.csv(Climatesum,"data-raw/Climatesum.csv")
usethis::use_data(Climatesum,overwrite = T)
usethis::use_r("Climatesum")
