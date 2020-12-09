library(readxl)
library(tidyverse)
library(knitr)
training<-read_excel("C:/Users/tmoloney/OneDrive - Trihydro/Fitness/202012_TrainingPlan.xlsx")
today<-weekdays.Date(Sys.Date())
format(Sys.Date(), '%m/%d/%Y')-days(2)
t<-ceiling(difftime(Sys.Date(),as.Date("2020-12-07"),units="weeks"))
t<-as.character(t)
today_train<-training[training$`Week:`==today,t]





rmarkdown::render("1.Rmd", output_file = "1.docx")
