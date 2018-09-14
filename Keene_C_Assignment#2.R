#read data
Assignment_2.data<-read.csv("C:/Users/Cheri/Documents/Professional/PHD Classes/statistics/Assignment_2 data.csv", stringsAsFactors = F)
#create subset with colums 1-13 and rows 1-191
subAssign_2 <-Assignment_2.data[1:191, 1:13]
#identify list of variables
print(subAssign_2 [1,1:13])
#mean(subAssign_2[1:191, 2],na.rm = TRUE)
#str(subAssign_2)
library(magrittr)
library(dplyr)
subAssign_2 %<>% mutate_if(is.character,as.numeric)
names(subAssign_2)
str(subAssign_2)
subAssign_2<-as.numeric(subAssign_2)
