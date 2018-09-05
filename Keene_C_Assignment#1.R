#Create vectors x,y,z with the identified values.
x<-c(5,10,15,20,25,30)
y<-c(-1,NA,75,3,5,8)
z<-c(5)
#Multiply x & y by z and store as new objects.
group1=c(x*z)
group2=c(y*z)
#Print the new vectors.
print(group1)
print(group2)
#Replace missing element in y with 2.5
y<-ifelse(test = is.na(y)==T, yes = 2.5, no = y)
#Print y with new value.
print(y)
#Load data set and print first ten state abbreviations
tbl<-read.csv("https://raw.githubusercontent.com/mattdemography/EDU_7043/master/Data/Assignment_1.csv")
tbl[1:10,1]
#Find the mean murder rate in the US
mean(tbl[1:50, 3])
#Find median murder rate in the US
median(tbl[1:50, 3])
#create copy of tbl to work from
df = tbl
#create subset of df for New England
subdf = subset(df,State=="CT" | State=="MA" | State== "ME" | State=="NH" | State=="RI" | State=="VT")
#Find mean murder rate in New England
mean(subdf[1:6, 3])
#Bonus: Find mean violent crime rate in US
df<-ifelse(test = is.na(df$Vcrime)==T, yes = 555, no = df$Vcrime)
mean(df)


