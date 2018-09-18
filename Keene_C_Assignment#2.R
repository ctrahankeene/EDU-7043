#read data
Assignment_2.data<-read.csv("C:/Users/Cheri/Documents/Professional/PHD Classes/statistics/Assignment_2 data.csv", stringsAsFactors = F)
#create subset with colums 1-13 and rows 1-191
subAssign_2 <-Assignment_2.data[1:191, 1:12]
#identify list of variables
print(subAssign_2 [1,1:12])
#mean(subAssign_2[1:191, 2],na.rm = TRUE)
#str(subAssign_2)
library(magrittr)
library(dplyr)
#subAssign_2<-as.numeric(subAssign_2)
subAssign_2 <- as.data.frame(sapply(subAssign_2, as.numeric))

str(subAssign_2)
View(subAssign_2)
#mean of 5 variables
mean(subAssign_2$Total.Membership)
mean(subAssign_2$Convert.Baptisms)
mean(subAssign_2$Mormon.Life.Expectancy)
mean(subAssign_2$Mormon.Birth.Rate)
mean(subAssign_2$Mormon.Death.Rate)
#median of 5 variables
median(subAssign_2$Convert.Baptisms)
median(subAssign_2$Total.Membership)
median(subAssign_2$Mormon.Birth.Rate)
median(subAssign_2$Mormon.Life.Expectancy)
median(subAssign_2$Mormon.Birth.Rate)
median(subAssign_2$Mormon.Death.Rate)
#mode of 5 variables
temp1<-table(as.vector(subAssign_2$Total.Membership))
names(temp1[temp1 == max(temp1)])
temp2<-table(as.vector(subAssign_2$Convert.Baptisms))
names(temp2[temp2 == max(temp)])
temp3<-table(as.vector(subAssign_2$Mormon.Birth.Rate))
names(temp3[temp3 == max(temp)])
temp4<-table(as.vector(subAssign_2$Mormon.Death.Rate))
names(temp4[temp == max(temp4)])
temp5<-table(as.vector(subAssign_2$Mormon.Life.Expectancy))
names(temp5[temp5 == max(temp)])
