## code to prepare `Forage quality`dataset goes here
rm(list=ls())
forage_raw<-read.csv("data-raw/forage1.csv")
View(forage_raw)
library(dplyr)
forage_raw<-forage_raw%>% 
  mutate(harvest_dt = as.Date(harvest_dt, format = "%Y-%m-%d"))
View(forage_raw)
#select only important variables
forage_a1<-forage_raw%>%select(site,country,year,yearn,nh,harvest,plot,treat,rep,N_l:IVCWD_C)
View(forage_a1)
#Create new variable for the data
forage_a3<-forage_a1%>%mutate(Cp_l=N_l*6.25,Cp_C= N_C*6.25, Cp_K=N_K*6.25)
View(forage_a3)

#To merge the harvest yield data 
# Create the new data frame with new variables
bio<-read.csv("data-raw/Biomass1.csv")
bio1<-bio%>%select(site,country,year,harvest,plot,treat,rep,harv_yield)
View(bio1)
bio2<-inner_join(forage_a3,bio1,by=c("site","country","year","harvest","plot","treat","rep"))
View(bio2)

bio3<-bio2%>%mutate(Cp_lw=Cp_l*harv_yield, NDF_Cw = NDF_C*harv_yield, ADF_Cw= ADF_C*harv_yield, IVTD_Cw=IVTD_C*harv_yield, 
                    IVCWD_Cw= IVCWD_C*harv_yield,Cp_Cw=Cp_C*harv_yield, NDF_Kw = NDF_K*harv_yield, ADF_Kw= ADF_K*harv_yield,Cp_Kw=Cp_K*harv_yield)
View(bio3)

# Group by sum of multiple columns
df2 <- bio3%>% group_by(site,country,year,plot) %>% 
  summarise(across(c(Cp_lw,NDF_Cw,ADF_Cw,IVTD_Cw,IVCWD_Cw,Cp_Cw,NDF_Kw,ADF_Kw,Cp_Kw,harv_yield),sum),
            .groups = 'drop') %>%
as.data.frame()
View(df2)

df3<-df2%>% mutate(Cp_la=Cp_lw/harv_yield, NDF_Ca = NDF_Cw/harv_yield, ADF_Ca=ADF_Cw/harv_yield, IVTD_Ca=IVTD_Cw/harv_yield, IVCWD_Ca=IVCWD_Cw/harv_yield, Cp_Ca=Cp_Cw/harv_yield, NDF_Ka = NDF_Kw/harv_yield, ADF_Ka= ADF_Kw/harv_yield,Cp_Ka=Cp_Kw/harv_yield)
View(df3)

df4<-df3%>%select(site,country,year,plot, harv_yield:Cp_Ka)
View(df4)

df5<-rename(df4,an_yield=harv_yield )
View(df5)

######################
forage2<-df5 
write.csv(forage2,"data-raw/Forage2.csv")
usethis::use_data(forage2, overwrite = TRUE)
#To add data documentation
usethis::use_r("forage2")

