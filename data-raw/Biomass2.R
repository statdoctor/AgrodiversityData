## code to prepare `Biosum` dataset goes here
rm(list=ls())
biomass<-read.csv("data-raw/Biomass.csv")
View(biomass)
library(dplyr)
attach(biomass)

# count the Site wise missing value in all variables
#data_count2 <- biomass %>%                                   
#group_by(SITE) %>%
#summarize_each(funs(sum(is.na(.))))
#View(data_count2) 

#Create duplicate Harv_yield to average the actual harv yield if individual yield is missing in some harvest.
bio<-biomass
bio$Annual_yield<-bio$Harv_yield
View(bio)

# Replace by harv yield=NA if Weed_y=NA 
bio1<-bio%>%mutate(Harv_yield = ifelse(is.na(Annual_yield), NA, Harv_yield)) 
View(bio1)


#Create a new variables avg of each yield group by (site, Year, Plot, na.rm=T)
bio2<-bio1%>% group_by(SITE,Year,Plot,Rep)%>%mutate(G1_ya=mean(G1_y,na.rm = T))
bio2<-bio2%>% group_by(SITE,Year,Plot,Rep)%>%mutate(G2_ya=mean(G2_y,na.rm = T))
bio2<-bio2%>% group_by(SITE,Year,Plot,Rep)%>%mutate(L1_ya=mean(L1_y,na.rm = T))
bio2<-bio2%>% group_by(SITE,Year,Plot,Rep)%>%mutate(L2_ya=mean(L2_y,na.rm = T))
bio2<-bio2%>% group_by(SITE,Year,Plot,Rep)%>%mutate(Weed_ya=mean(Weed_y,na.rm = T))
bio2<-bio2%>% group_by(SITE,Year,Plot,Rep)%>%mutate(Harv_ya=mean(Harv_yield,na.rm = T))
View(bio2)

# create new proportions,avg of individual yield/Total average
bio3<-bio2%>%mutate(G1_yp=(G1_ya/Harv_ya))
bio3<-bio3%>%mutate(G2_yp=(G2_ya/Harv_ya))
bio3<-bio3%>%mutate(L1_yp=(L1_ya/Harv_ya))
bio3<-bio3%>%mutate(L2_yp=(L2_ya/Harv_ya))
bio3<-bio3%>%mutate(Weed_yp=(Weed_ya/Harv_ya))
View(bio3)

############ Create new variable to identify what happened
# Now multiply each proportion with total yield for the missing rows (where all individual yield missing and total not missing) 
bio4 <- bio3 %>% group_by(SITE,Year,Plot,Rep) %>% mutate(G1_yn= ifelse(is.na(G1_y),(G1_yp*Annual_yield),G1_y))
bio4 <- bio4 %>% group_by(SITE,Year,Plot,Rep) %>% mutate(G2_yn= ifelse(is.na(G2_y),(G2_yp*Annual_yield),G2_y))
bio4 <- bio4%>% group_by(SITE,Year,Plot,Rep) %>% mutate(L1_yn= ifelse(is.na(L1_y),(L1_yp*Annual_yield),L1_y))
bio4 <- bio4 %>% group_by(SITE,Year,Plot,Rep) %>% mutate(L2_yn= ifelse(is.na(L2_y),(L2_yp*Annual_yield),L2_y))
bio4 <- bio4 %>% group_by(SITE,Year,Plot,Rep) %>% mutate(Weed_yn= ifelse(is.na(Weed_y),(Weed_yp*Annual_yield),Weed_y))
View(bio4)
# Create the new data frame with new variables
bio5<-bio4%>%select(SITE:Dens,G1_yn,G2_yn,L1_yn,L2_yn,Weed_yn,Annual_yield)
View(bio5)# This is some what complete data

# count the Site wise missing value in all variables
#data_count3 <- bio5 %>%                                   
#group_by(SITE) %>%
#summarize_each(funs(sum(is.na(.))))
#View(data_count3) 

############################################################################
# Now we can use bio5 data to make the biosum dataset

# Sum the harvest by Year per Plot for each site
bio6<-bio5%>%group_by(SITE,Year,Plot,Rep)%>%summarise(across(c(G1_yn,G2_yn,L1_yn,L2_yn,Weed_yn,Annual_yield),sum))%>%as.data.frame()
dim(bio6)
View(bio6)
# Select intional variables from bio5 to attach it to the sum dataset
bio7<-bio5%>%select(SITE:Dens,-c(Harvest,Harvest_dt,Treat))
View(bio7)

bio8<-unique(bio7)
dim(bio8)
View(bio8)

bio9<-left_join(bio8,bio6)
View(bio9)# Final merged dataset

#####################################
Biomass2 = bio9
write.csv(Biomass2,"data-raw/Biomass2.csv")
usethis::use_data(Biomass2,overwrite = T)
usethis::use_r("Biomass2")
View(Biomass2)
