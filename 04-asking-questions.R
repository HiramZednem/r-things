
library(tidyverse)

data("ToothGrowth")
View(ToothGrowth)

filtered_data = filter(ToothGrowth, dose == 0.5 )
View(filtered_data)

 arrange(filtered_data, len)

#arrange(filter(ToothGrowth, dose == 0.5), len)

#filtered_using_pipes = ToothGrowth %>% 
 # filter(dose == 0.5) %>% 
 # arrange(len)

average_per_sup = ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize( mean_lean = mean(len, na.rm = T), .groups = "drop" )

View(average_per_sup)

library(lubridate)

mdy("July 10th, 2020")

ymd(20200710)
