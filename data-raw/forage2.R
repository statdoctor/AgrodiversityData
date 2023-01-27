## code to prepare `Forage quality`dataset goes here
rm(list=ls())
forage_raw<-readr::read_csv("data-raw/Forage.csv")
View(forage_raw)
library(dplyr)
forage_raw<-forage_raw%>% 
  mutate(Harvest_dt = as.Date(Harvest_dt, format = "%m/%d/%Y"))

#select only important variables
forage_a1<-forage_raw%>%select(SITE,Country,Year,Yearn,Nh,Harvest,Plot,N_l:Ivcwd_c)
View(forage_a1)
#select only necessary sites that have done the forage quality measurement.
#Those sites are Iceland(a), Norway(a), Sweden and Canada.
forage_a2<-forage_a1%>%filter(Country=="Iceland_a"|Country=="Norway_a"|Country=="Sweden_c"|Country=="Canada")
View(forage_a2)
#Create new variable for the data
forage_a3<-forage_a2%>%mutate(Cp_c= N_c*6.25)#crude nitrogen for canada
View(forage_a3)

#Erla Sturludóttir used the following formula. But it is not matching with the value in the data for canada analysis. 
#IVCWD = 1000 - [(1000 – IVTD)/(NDF/1000)]# This is not matching with the Ivcwd_k as -ve value is produced.
#We need to calculate IVCWD for kiel data as some sites have only information about kiel analysis.

#forage_a3<-forage_a2%>%mutate(Cp_k= N_k*6.25,Cp_c= N_c*6.25, Ivtd_k = Cdomd_k, Ivcwd_k=1000-((1000-Cdomd_k)/(Ndf_k/1000)))#crude nitrogen for kiel
forage_a3<-forage_a3%>%mutate(Cp_c=N_c*6.25)
View(forage_a3)

#To merge the harvest yield data 
# Create the new data frame with new variables
bio<-readr::read_csv("data-raw/Biomass.csv")
bio1<-bio%>%select(SITE,Year,Harvest,Plot,Harv_yield)
View(bio1)
bio2<-left_join(forage_a3,bio1,by=c("SITE","Year","Harvest","Plot"))
View(bio2)

bio3<-bio2%>%mutate(Ndf_cw = Ndf_c*Harv_yield, Adf_cw= Adf_c*Harv_yield, Ivtd_cw=Ivtd_c*Harv_yield, 
                    Ivcwd_cw= Ivcwd_c*Harv_yield,Cp_cw=Cp_c*Harv_yield)
View(bio3)

# Group by sum of multiple columns
df2 <- bio3%>% group_by(SITE,Year,Plot) %>% 
  summarise(across(c(Ndf_cw,Adf_cw,Ivtd_cw,Ivcwd_cw,Cp_cw,Harv_yield),sum),
            .groups = 'drop') %>%
  as.data.frame()
View(df2)

df3<-df2%>% mutate(num = Ndf_cw+Adf_cw+Ivtd_cw+Ivcwd_cw+Cp_cw, Fq= num/Harv_yield)
View(df3)

# Group by sum of multiple columns
df4 <-forage_a3%>% group_by(SITE,Year,Plot) %>% 
summarise(across(c(N_c,Ndf_c,Adf_c,Ivtd_c,Ivcwd_c,Cp_c),mean),
            .groups = 'drop') %>%
as.data.frame()
View(df4)
########################
df5<-df3%>%select(SITE,Year,Plot,Fq)
View(df5)

bio5<-left_join(df4,df5,by=c("SITE","Year","Plot"))
View(bio5)
bio5<-rename(bio5, N_ca = N_c,Ndf_ca=Ndf_c, Adf_ca=Adf_c, Ivtd_ca=Ivtd_c,Ivcwd_ca=Ivcwd_c,Cp_ca=Cp_c)
View(bio5)

bio6<-forage_a3%>%select(SITE,Country,Year,Plot,Nh)
View(bio6)
bio7<-left_join(bio6,bio5,by=c("SITE","Year","Plot"))
View(bio7)
bio8<-unique(bio7)
View(bio8)

######################
Forage2<-bio8[!apply(bio8 == "", 1, all),]# To remove full empty rows 
write.csv(Forage2,"data-raw/Forage2.csv")
usethis::use_data(Forage2, overwrite = TRUE)
#To add data documentation
usethis::use_r("Forage2")

