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
#create new variables
texas$newFS<-ifelse(texas$FEESCALE==1,1| texas$FEESCALE<=0,0)
View(texas$newFS)
#contingency table
table(texas$MHSERVICES,texas$newFS)
View(texas$MHSERVICES)
#cross tabulation
CrossTable(texas$MHSERVICES,texas$newFS, prop.chisq =F)
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
