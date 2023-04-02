## code to prepare `Biosum` dataset goes here
rm(list=ls())
biomass1<-read.csv("data-raw/biomass1.csv")
View(biomass1)
library(dplyr)
attach(biomass1)

# count the site wise missing value in all variables
#data_count2 <- biomass %>%                                   
#group_by(site) %>%
#summarize_each(funs(sum(is.na(.))))
#View(data_count2) 

#Create duplicate harv_yield to average the actual harv yield if individual yield is missing in some harvest.
bio<-biomass1
bio$an_yield<-bio$harv_yield
View(bio)

# replace by harv yield=NA if an_yield=NA 
bio1<-bio%>%mutate(harv_yield = ifelse(is.na(an_yield), NA, harv_yield)) 
View(bio1)


#Create a new variables avg of each yield group by (site, year, plot, na.rm=T)
bio2<-bio1%>% group_by(site,year,plot,rep)%>%mutate(a_g1=mean(g1_y,na.rm = T))
bio2<-bio2%>% group_by(site,year,plot,rep)%>%mutate(a_g2=mean(g2_y,na.rm = T))
bio2<-bio2%>% group_by(site,year,plot,rep)%>%mutate(a_l1=mean(l1_y,na.rm = T))
bio2<-bio2%>% group_by(site,year,plot,rep)%>%mutate(a_l2=mean(l2_y,na.rm = T))
bio2<-bio2%>% group_by(site,year,plot,rep)%>%mutate(a_weed=mean(weed_y,na.rm = T))
bio2<-bio2%>% group_by(site,year,plot,rep)%>%mutate(a_harv=mean(harv_yield,na.rm = T))
View(bio2)

# create new proportions,avg of individual yield/Total average
bio3<-bio2%>%mutate(g1_yp=(a_g1/a_harv))
bio3<-bio3%>%mutate(g2_yp=(a_g2/a_harv))
bio3<-bio3%>%mutate(l1_yp=(a_l1/a_harv))
bio3<-bio3%>%mutate(l2_yp=(a_l2/a_harv))
bio3<-bio3%>%mutate(weed_yp=(a_weed/a_harv))
View(bio3)

############ Create new variable to identify what happened
# Now multiply each proportion with total yield for the missing rows (where all individual yield missing and total not missing) 
bio4 <- bio3 %>% group_by(site,year,plot,rep)%>% mutate(an_g1= ifelse(is.na(g1_y),(g1_yp*an_yield),g1_y))
bio4 <- bio4 %>% group_by(site,year,plot,rep)%>% mutate(an_g2= ifelse(is.na(g2_y),(g2_yp*an_yield),g2_y))
bio4 <- bio4%>% group_by(site,year,plot,rep)%>% mutate(an_l1= ifelse(is.na(l1_y),(l1_yp*an_yield),l1_y))
bio4 <- bio4 %>% group_by(site,year,plot,rep)%>% mutate(an_l2= ifelse(is.na(l2_y),(l2_yp*an_yield),l2_y))
bio4 <- bio4 %>% group_by(site,year,plot,rep)%>% mutate(an_weed= ifelse(is.na(weed_y),(weed_yp*an_yield),weed_y))
View(bio4)
# Create the new data frame with new variables
bio5<-bio4%>%select(site:richness,an_g1,an_g2,an_l1,an_l2,an_weed,an_yield)
View(bio5)# This is some what complete data

# count the site wise missing value in all variables
#data_count3 <- bio5 %>%                                   
#group_by(site) %>%
#summarize_each(funs(sum(is.na(.))))
#View(data_count3) 

############################################################################
# Now we can use bio5 data to make the biosum dataset

# Sum the harvest by year per plot for each rep for each site
bio6<-bio5%>%group_by(site,year,plot,rep)%>%summarise(across(c(an_g1,an_g2,an_l1,an_l2,an_weed,an_yield),sum))%>%as.data.frame()
dim(bio6)
View(bio6)
# Select intional variables from bio5 to attach it to the sum dataset
bio7<-bio5%>%select(site:richness,-c(harvest,harvest_dt,treat))
View(bio7)

bio8<-unique(bio7)
dim(bio8)
View(bio8)

bio9<-left_join(bio8,bio6)
View(bio9)# Final merged dataset

#####################################
biomass2 = bio9
write.csv(biomass2,"data-raw/biomass2.csv")
usethis::use_data(biomass2,overwrite = T)
usethis::use_r("biomass2")
View(biomass2)
