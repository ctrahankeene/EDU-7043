#read data
Assignment_2.data<-read.csv("C:/Users/Cheri/Documents/Professional/PHD Classes/statistics/Assignment_2 data.csv", stringsAsFactors = F)
#create subset with colums 1-13 and rows 1-191
subAssign_2 <-Assignment_2.data[1:191, 1:12]
#Describe central tendencies of three variables
summary(subAssign_2$Total.Membership)
summary(subAssign_2$Births.to.Active.Members)
summary(subAssign_2$Total.Baptisms)
#find mode of three variables
temp1<-table(as.vector(subAssign_2$Total.Membership))
names(temp1[temp1 == max(temp1)])
temp2<-table(as.vector(subAssign_2$Births.to.Active.Members))
names(temp2[temp2 == max(temp2)])
temp3<-table(as.vector(subAssign_2$Total.Baptisms))
names(temp3[temp3 == max(temp3)])
#Describe variables through variation
var(subAssign_2$Total.Membership)
var(subAssign_2$Births.to.Active.Members)
var(subAssign_2$Total.Baptisms)
#Show variable relationship to normality using histogram and q-q plot.  
hist(subAssign_2$Total.Membership)
qqnorm(subAssign_2$Total.Membership); qqline(subAssign_2$Total.Membership)
hist(subAssign_2$Births.to.Active.Members)
qqnorm(subAssign_2$Births.to.Active.Members); qqline(subAssign_2$Births.to.Active.Members)
hist(subAssign_2$Total.Baptisms)
qqnorm(subAssign_2$Total.Baptisms); qqline(subAssign_2$Total.Baptisms)
