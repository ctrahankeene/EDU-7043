#read data
NMHSS2015<-read.csv("C:/Users/Cheri/Documents/Professional/PHD Classes/statistics/N-MHSS-2015-DS0001-data-excel.csv", stringsAsFactors = F)
View(NMHSS2015)
texas<-NMHSS2015[which(NMHSS2015$LST == "TX"),]
#create new variables for mental health services, other related services, treatment modality, and funding
texas$MHSERVICES<-texas$MHINTAKE+texas$MHDIAGEVAL+texas$TREATMT+texas$TREATPSYCHOTHRPY+texas$TREATFAMTHRPY+texas$TREATGRPTHRPY+texas$MHEDUCATION+texas$CRISISTEAM2+texas$SUPPEMPLOY+texas$SUPPHOUSING+texas$FOSTERCARE+texas$MHLEGAL+texas$MHCONSUMER+texas$MHVOCREHAB+texas$MHREFERRAL+texas$MHEMGCY+texas$MHSUICIDE+texas$MHPSYCHREHAB+texas$SRVC31+texas$SPECGRPEATING+texas$SRVC116+texas$POSTTRAUM
texas$TXMOD<-texas$TREATCOGTHRPY+texas$TREATDIALTHRPY+texas$TREATBEHAVMOD+texas$TREATTRAUMATHRPY+texas$TREATACTVTYTHRPY+texas$TREATELECTRO+texas$TREATPSYCHOMED+texas$ASSERTCOMM
texas$ORSERVICES<-texas$ILLNESSMGMT+texas$PRIMARYCARE+texas$DIETEXERCOUNSEL+texas$TREATTELEMEDINCE+texas$TREATDUALMHSA+texas$MHINTCASEMGMT+texas$MHCASEMGMT+texas$MHCOURTORDERED+texas$MHTOBACCOUSE+texas$MHTOBACCOCESS+texas$MHNICOTINEREP+texas$SMOKINGCESSATION
View(texas)
#create new variables
texas$FEEYES<-ifelse(texas$FEESCALE==1,1,0)
table(texas$FEEYES)
names(texas)
texas$FEENO<-ifelse(texas$FEESCALE==0,1,0)
table(texas$FEENO)
names(texas)

#contingency table
table(texas$FEEYES, texas$MHSERVICES)
View(texas$MHSERVICES)
#cross tabulation
CrossTable(texas$FEEYES, texas$MHSERVICES, prop.chisq =F)
