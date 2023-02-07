## code to prepare `Forage quality`dataset goes here
rm(list=ls())
forage_raw<-read.csv("data-raw/Forage1.csv")
View(forage_raw)
library(dplyr)
forage_raw<-forage_raw%>% 
  mutate(Harvest_dt = as.Date(Harvest_dt, format = "%d-%m-%Y"))
View(forage_raw)
#select only important variables
forage_a1<-forage_raw%>%select(SITE,Country,Year,Yearn,Nh,Harvest,Plot,Treat,Rep,N_l:Ivcwd_c)
View(forage_a1)
#Create new variable for the data
forage_a3<-forage_a1%>%mutate(Cp_l=N_l*6.25,Cp_c= N_c*6.25, Cp_k=N_k*6.25)
View(forage_a3)

#To merge the harvest yield data 
# Create the new data frame with new variables
bio<-read.csv("data-raw/Biomass1.csv")
bio1<-bio%>%select(SITE,Country,Year,Harvest,Plot,Treat,Rep,Harv_yield)
View(bio1)
bio2<-inner_join(forage_a3,bio1,by=c("SITE","Country","Year","Harvest","Plot","Treat","Rep"))
View(bio2)

bio3<-bio2%>%mutate(Cp_lw=Cp_l*Harv_yield, Ndf_cw = Ndf_c*Harv_yield, Adf_cw= Adf_c*Harv_yield, Ivtd_cw=Ivtd_c*Harv_yield, 
                    Ivcwd_cw= Ivcwd_c*Harv_yield,Cp_cw=Cp_c*Harv_yield, Ndf_kw = Ndf_k*Harv_yield, Adf_kw= Adf_k*Harv_yield,Cp_kw=Cp_k*Harv_yield)
View(bio3)

# Group by sum of multiple columns
df2 <- bio3%>% group_by(SITE,Country,Year,Plot) %>% 
  summarise(across(c(Cp_lw,Ndf_cw,Adf_cw,Ivtd_cw,Ivcwd_cw,Cp_cw,Ndf_kw,Adf_kw,Cp_kw,Harv_yield),sum),
            .groups = 'drop') %>%
as.data.frame()
View(df2)

df3<-df2%>% mutate(Cp_la=Cp_lw/Harv_yield, Ndf_ca = Ndf_cw/Harv_yield, Adf_ca=Adf_cw/Harv_yield, Ivtd_ca=Ivtd_cw/Harv_yield, Ivcwd_ca=Ivcwd_cw/Harv_yield, Cp_ca=Cp_cw/Harv_yield, Ndf_ka = Ndf_kw/Harv_yield, Adf_ka= Adf_kw/Harv_yield,Cp_ka=Cp_kw/Harv_yield)
View(df3)

df4<-df3%>%select(SITE,Country,Year,Plot, Harv_yield:Cp_ka)
View(df4)

df5<-rename(df4,Annual_yield=Harv_yield )
View(df5)

######################
Forage2<-df5 
write.csv(Forage2,"data-raw/Forage2.csv")
usethis::use_data(Forage2, overwrite = TRUE)
#To add data documentation
usethis::use_r("Forage2")

