library(tidyverse)
library(lubridate)
library(ggpubr)
library(scales)
library(RColorBrewer)

data <- read.csv("C:\\Users\\murai\\Desktop\\emp.csv")
data$Date <- mdy(data$Date)

ggplot(data, aes(x=Date))+
  geom_point(aes(y = Uninsure))+ #Uninsured Pop Percentage
  geom_smooth(aes(y = Uninsure, color = "Uninsured Population"), se=FALSE)+ #Uninsured Pop Percentage
  geom_point(aes(y = Unemploy))+ #Unemployed Pop Percent
  geom_smooth(aes(y = Unemploy, color = "Unemployed Population"), se=FALSE)+ #Unemployed Pop Percent
  scale_x_date(date_breaks = "3 month", date_labels = "%b %Y")+
  scale_y_continuous(name="Millions of People", limits = c(0, 50))


  

