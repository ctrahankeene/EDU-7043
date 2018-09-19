#read data
Assignment_2.data<-read.csv("C:/Users/Cheri/Documents/Professional/PHD Classes/statistics/Assignment_2 data.csv", stringsAsFactors = F)
#create subset with colums 1-13 and rows 1-191
subAssign_2 <-Assignment_2.data[1:191, 1:12]
#identify list of variables
print(subAssign_2 [1,1:12])
#library(magrittr)
#library(dplyr)
subAssign_2 <- as.data.frame(sapply(subAssign_2, as.numeric))
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
median(subAssign_2$Mormon.Death.Rate)
#mode of 5 variables
temp1<-table(as.vector(subAssign_2$Total.Membership))
names(temp1[temp1 == max(temp1)])
temp2<-table(as.vector(subAssign_2$Convert.Baptisms))
names(temp2[temp2 == max(temp2)])
temp3<-table(as.vector(subAssign_2$Mormon.Birth.Rate))
names(temp3[temp3 == max(temp3)])
temp4<-table(as.vector(subAssign_2$Mormon.Death.Rate))
names(temp4[temp4 == max(temp4)])
temp5<-table(as.vector(subAssign_2$Mormon.Life.Expectancy))
names(temp5[temp5 == max(temp5)])
#find variance, range, and standard deviation for one variable
sd(subAssign_2$Mormon.Birth.Rate)
var(subAssign_2$Mormon.Birth.Rate)
range(subAssign_2$Mormon.Birth.Rate)
max(subAssign_2$Mormon.Birth.Rate)-min(subAssign_2$Mormon.Birth.Rate)
#view temp files to determine if mode exists
View(temp1)
View(temp2)
View(temp3)
View(temp4)
View(temp5)
#create histogram of one variable
hist(subAssign_2$Mormon.Life.Expectancy)
#create stem-leaf plot of one variable
stem(subAssign_2$Mormon.Life.Expectancy)
