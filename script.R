library(readxl)
library(tidyverse)
library(knitr)
library(lubridate)
training<-read_excel("C:/Users/tmoloney/OneDrive - Trihydro/Fitness/202108_TrainingPlan.xlsx")
today<-weekdays.Date(Sys.Date())
#format(Sys.Date(), '%m/%d/%Y')-days(2)
t<-ceiling(difftime(Sys.Date(),as.Date("2021-07-12"),units="weeks"))
t<-as.character(t)
today_train<-training[training$`Week:`==today,t]



Sys.Date()+1

rmarkdown::render("1.Rmd", output_file = "1.docx")
rmarkdown::render("2.Rmd", output_file = "2.docx")
