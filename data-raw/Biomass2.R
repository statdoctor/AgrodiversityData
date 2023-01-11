## code to prepare `Biosum` dataset goes here

rm(list=ls())
biomass<-readr::read_csv("data-raw/Biomass.csv")
View(biomass)
library(dplyr)
attach(biomass)

# count the Site wise missing value in all variables
data_count2 <- biomass %>%                                   
  group_by(SITE) %>%
  summarize_each(funs(sum(is.na(.))))
View(data_count2) 

#Create duplicate HARV_Yield to average the actual harv yield if individual yield is missing in some harvest.
bio<-biomass
bio$HARV_YIELD2<-bio$HARV_YIELD
View(bio)

# Replace by harv yield=NA if WEED_Y=NA 
bio1<-bio%>%mutate(HARV_YIELD = ifelse(is.na(WEED_Y), NA, HARV_YIELD)) 
View(bio1)


#Create a new variables avg of each yield group by (site, year, plot, na.rm=T)
bio2<-bio1%>% group_by(SITE,YEAR,PLOT)%>%mutate(G1_Ya=mean(G1_Y,na.rm = T))
bio2<-bio2%>% group_by(SITE,YEAR,PLOT)%>%mutate(G2_Ya=mean(G2_Y,na.rm = T))
bio2<-bio2%>% group_by(SITE,YEAR,PLOT)%>%mutate(L1_Ya=mean(L1_Y,na.rm = T))
bio2<-bio2%>% group_by(SITE,YEAR,PLOT)%>%mutate(L2_Ya=mean(L2_Y,na.rm = T))
bio2<-bio2%>% group_by(SITE,YEAR,PLOT)%>%mutate(WEED_Ya=mean(WEED_Y,na.rm = T))
bio2<-bio2%>% group_by(SITE,YEAR,PLOT)%>%mutate(HARV_Ya=mean(HARV_YIELD,na.rm = T))
View(bio2)

# create new proportions,avg of individual yield/Total average
bio3<-bio2%>%mutate(G1_Yp=(G1_Ya/HARV_Ya))
bio3<-bio3%>%mutate(G2_Yp=(G2_Ya/HARV_Ya))
bio3<-bio3%>%mutate(L1_Yp=(L1_Ya/HARV_Ya))
bio3<-bio3%>%mutate(L2_Yp=(L2_Ya/HARV_Ya))
bio3<-bio3%>%mutate(WEED_Yp=(WEED_Ya/HARV_Ya))
View(bio3)

############ Create new variable to identify what happened
# Now multiply each proportion with total yield for the missing rows (where all individual yield missing and total not missing) 
bio4 <- bio3 %>% group_by(SITE,YEAR,PLOT) %>% mutate(G1_YN= ifelse(is.na(G1_Y),(G1_Yp*HARV_YIELD2),G1_Y))
bio4 <- bio4 %>% group_by(SITE,YEAR,PLOT) %>% mutate(G2_YN= ifelse(is.na(G2_Y),(G2_Yp*HARV_YIELD2),G2_Y))
bio4 <- bio4%>% group_by(SITE,YEAR,PLOT) %>% mutate(L1_YN= ifelse(is.na(L1_Y),(L1_Yp*HARV_YIELD2),L1_Y))
bio4 <- bio4 %>% group_by(SITE,YEAR,PLOT) %>% mutate(L2_YN= ifelse(is.na(L2_Y),(L2_Yp*HARV_YIELD2),L2_Y))
bio4 <- bio4 %>% group_by(SITE,YEAR,PLOT) %>% mutate(WEED_YN= ifelse(is.na(WEED_Y),(WEED_Yp*HARV_YIELD2),WEED_Y))
View(bio4)
# Create the new data frame with new variables
bio5<-bio4%>%select(SITE:DENS,G1_YN,G2_YN,L1_YN,L2_YN,WEED_YN,HARV_YIELD2)
View(bio5)# This is some what complete data

# count the Site wise missing value in all variables
data_count3 <- bio5 %>%                                   
  group_by(SITE) %>%
  summarize_each(funs(sum(is.na(.))))
View(data_count3) 

############################################################################
# Now we can use bio5 data to make the biosum dataset

# Sum the harvest by year per plot for each site
bio6<-bio5%>%group_by(SITE,YEAR,PLOT)%>%summarise(across(c(G1_YN,G2_YN,L1_YN,L2_YN,WEED_YN,HARV_YIELD2),sum))%>%as.data.frame()
dim(bio6)
View(bio6)
# Select intional variables from bio5 to attach it to the sum dataset
bio7<-bio5%>%select(SITE:DENS,-c(HARVEST,HARVEST_DATE,TREAT,REP))
View(bio7)

bio8<-unique(bio7)
dim(bio8)
View(bio8)

bio9<-left_join(bio8,bio6)
View(bio9)# Final merged dataset

# count the Site wise missing value in all variables
data_count4 <- bio9 %>%                                   
  group_by(SITE) %>%
  summarize_each(funs(sum(is.na(.))))
View(data_count4) 
#####################################

Biomass2 = bio9
write.csv(Biomass2,"data-raw/Biomass2.csv")
usethis::use_data(Biomass2,overwrite = T)
usethis::use_r("Biomass2")
View(Biomass2)
