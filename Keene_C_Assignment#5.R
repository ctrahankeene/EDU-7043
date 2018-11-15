#read data
NMHSS2015<-read.csv("C:/Users/Cheri/Documents/Professional/PHD Classes/statistics/N-MHSS-2015-DS0001-data-excel.csv", stringsAsFactors = F)
View(NMHSS2015)
texas<-NMHSS2015[which(NMHSS2015$LST == "TX"),]
#create new variables for mental health services, other related services, treatment modality, and funding
texas$MHSERVICES<-texas$MHINTAKE+texas$MHDIAGEVAL+texas$TREATMT+texas$TREATPSYCHOTHRPY+texas$TREATFAMTHRPY+texas$TREATGRPTHRPY+texas$MHEDUCATION+texas$CRISISTEAM2+texas$SUPPEMPLOY+texas$SUPPHOUSING+texas$FOSTERCARE+texas$MHLEGAL+texas$MHCONSUMER+texas$MHVOCREHAB+texas$MHREFERRAL+texas$MHEMGCY+texas$MHSUICIDE+texas$MHPSYCHREHAB+texas$SRVC31+texas$SPECGRPEATING+texas$SRVC116+texas$POSTTRAUM
View(texas$MHSERVICES)
texas$TXMOD<-texas$TREATCOGTHRPY+texas$TREATDIALTHRPY+texas$TREATBEHAVMOD+texas$TREATTRAUMATHRPY+texas$TREATACTVTYTHRPY+texas$TREATELECTRO+texas$TREATPSYCHOMED+texas$ASSERTCOMM
texas$ORSERVICES<-texas$ILLNESSMGMT+texas$PRIMARYCARE+texas$DIETEXERCOUNSEL+texas$TREATTELEMEDINCE+texas$TREATDUALMHSA+texas$MHINTCASEMGMT+texas$MHCASEMGMT+texas$MHCOURTORDERED+texas$MHTOBACCOUSE+texas$MHTOBACCOCESS+texas$MHNICOTINEREP+texas$SMOKINGCESSATION
View(texas)
#create subsets for feescale 'yes' and feescale 'no'
feeyes<-subset(texas, texas$FEESCALE == 1)
View(feeyes)
names(feeyes)
feeno<-subset(texas, texas$FEESCALE == 0)
View(feeno)
names(feeno)
#look at distribution
hist(texas$MHSERVICES)
hist(texas$TXMOD) 
hist(texas$ORSERVICES) 
#central tendencies for all Texas facilities surveyed
summary(texas$MHSERVICES)
summary(texas$ORSERVICES)
summary(texas$TXMOD)
sd(texas$MHSERVICES)
sd(texas$ORSERVICES)
sd(texas$TXMOD)
var(texas$MHSERVICES)
var(texas$ORSERVICES)
var(texas$TXMOD)
#Central tendencies for no fee scale
summary(feeno$MHSERVICES)
summary(feeno$ORSERVICES)
summary(feeno$TXMOD)
sd(feeno$MHSERVICES)
sd(feeno$ORSERVICES)
sd(feeno$TXMOD)
var(feeno$MHSERVICES)
var(feeno$ORSERVICES)
var(feeno$TXMOD)
#central tendencies for yes fee scale
summary(feeyes$MHSERVICES)
summary(feeyes$ORSERVICES)
summary(feeyes$TXMOD)
sd(feeyes$MHSERVICES)
sd(feeyes$ORSERVICES)
sd(feeyes$TXMOD)
var(feeyes$MHSERVICES)
var(feeyes$ORSERVICES)
var(feeyes$TXMOD)
#create new variables
texas$newFS<-ifelse(texas$FEESCALE==1,1| texas$FEESCALE<=0,0)
View(texas$newFS)
#contingency table
table(texas$MHSERVICES,texas$newFS)
View(texas$MHSERVICES)
#cross tabulation
CrossTable(texas$MHSERVICES,texas$newFS, prop.chisq =F)
CrossTable(texas$ORSERVICES,texas$newFS, prop.chisq =F)
CrossTable(texas$TXMOD,texas$newFS, prop.chisq =F)
#anova
fit<-aov(texas$newFS~(as.factor(texas$MHSERVICES)))
summary(fit)
TukeyHSD(fit)
fit<-aov(texas$newFS~(as.factor(texas$ORSERVICES)))
summary(fit)
TukeyHSD(fit)
fit<-aov(texas$newFS~(as.factor(texas$TXMOD)))
summary(fit)
TukeyHSD(fit)
