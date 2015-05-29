#with the data created, let's analyze
#first, import tidy data
Full.Data <- read.csv("~/R Stuff/GDP and Cities/Full Data.csv")
#now, let's clean up the names
Full.Data$Urb <- Full.Data$Urbanization.over.1.million
Full.Data$GDP <- Full.Data$GDP.per.capita
#and plot the data
plot(Full.Data$Urb, Full.Data$GDP)
#seems very messy
#let's clean it up
Full.Data$UrbLog <- sapply(Full.Data$Urb, FUN=function(x) {log(Full.Data$Urb)})
Full.Data$GDPLog <- sapply(Full.Data$GDP, FUN=function(x) {log(Full.Data$GDP)})
#now let's export and reimport this data so that R can read it faster
write.csv(Full.Data, file = "Full.Data.Logs.csv", row.names = FALSE)
#now reimport so that it is easy
Full.Data <- read.csv("~/R Stuff/GDP and Cities/Full Data.csv")
#let's look at graph
plot(Full.Data$UrbLog, Full.Data$GDPLog)
#much better
#now let's make a simple model
OLSmodel <- lm(GDPLog ~ UrbLog, data=Full.Data)
summary(OLSmodel)
#not bad
#however, this data is panel data
#therefore, let's import the plm package, made for working with panel data
install.packages("plm")
library(plm)
#let's try a fixed effect model
FEmodel <- plm(GDPLog ~ UrbLog, data=Full.Data, index=c("Country", "Year"), mode="within")
summary(FEmodel)
#now let's do an F test for Fixed Effect
pFtest(FEmodel, OLSmodel)
#there are indeed fixed effects
#now let's try a random effect model
REmodel <- plm(GDPLog ~ UrbLog, data=Full.Data, index=c("Country", "Year"), mode="random")
summary(REmodel)
#now let's see if FE or RE model is better
#to do so, run a Hausman test
phtest(FEmodel, REmodel)
#looks like fixed effect model is better, but only just
#let's examine stationarity
install.packages("tseries")
library(tseries)
adf.test(Full.Data$GDPLog)
adf.test(Full.Data$UrbLog)
#both stationary
#now heteroskedasticity
install.packages("lmtest")
library(lmtest)
bptest(FEmodel)
#seems to be heteroskedastic
#now, let's see how much urbanization percentage in total takes away from 
#urban percentage in cities of 1 million or more
FEmodel2 <- plm(GDPLog ~ UrbPer, data=Full.Data, index=c("Country", "Year"), mode="within")
summary(FEmodel2)
plot(Full.Data$UrbPer, Full.Data$GDPLog)
#with this, it seems Urban population in general is a much better variable
#urban population in areas of 1 million or more is irrelevant
#let's do a Granger causality test
grangertest(Full.Data$GDPLog ~ Full.Data$UrbPer, order=10)
#definitely causal in that direction
#let's check the opposite direction
grangertest(Full.Data$UrbPer ~ Full.Data$GDPLog, order=10)
#not causal in this direction
#let's fit the model to our graph
abline(FEmodel2)
#as you can see, it seems low
#let's get rid of outliers (Singapore, Hong Kong) in our data set
#that might improve our model
FEmodel2 <- plm(GDPLog ~ UrbPer, data=Full.Data.No.Outliers, index=c("Country", "Year"), mode="within")
summary(FEmodel2)
plot(Full.Data.No.Outliers$UrbPer, Full.Data.No.Outliers$GDPLog)
abline(FEmodel2)
#Looks like Mongolia, a nomadic country with one city, might also be an outlier
#we'll take it out and see what happens
Full.Data.No.Outliers <- read.csv("~/R Stuff/GDP and Cities/Full Data No Outliers.csv")
plot(Full.Data.No.Outliers$UrbPer, Full.Data.No.Outliers$GDPLog)
#nope, looks like Monglia was not that outlier
#instead, it appears Iraq, a country torn by war in the 90's and 2000's, is
#so, we removed Iraq from the data set
Full.Data.No.Outliers2 <- read.csv("~/R Stuff/GDP and Cities/Full Data No Outliers.csv")
plot(Full.Data.No.Outliers2$UrbPer, Full.Data.No.Outliers2$GDPLog)
FEmodel2 <- plm(GDPLog ~ UrbPer, data=Full.Data.No.Outliers2, index=c("Country", "Year"), mode="within")
summary(FEmodel2)
abline(FEmodel2)
#our R squared has gone up, and Urban Percentage seems to have more effect
#now let's see if change in urban percentage changes GDP growth rate
#import a new data set of percentage changes
#I removed the outlier of Cambodia, which was heavily changing the model
#likewise, also removed Rwanda and Liberia, both outliers
#all these countries are outliers due to civil war or external war
Full.Data.Percentage.Change <- read.csv("~/R Stuff/GDP and Cities/Full Data Percentage Change.csv")
#first let's look at the data again
plot(Full.Data.Percentage.Change$UrbPer, Full.Data.Percentage.Change$GDP.per.capita)
plot(Full.Data.Percentage.Change$UrbPer, Full.Data.Percentage.Change$LogGDP)
#now let's make a fixed effect model using the percentage changes
FEmodel5 <- plm(LogGDP ~ UrbPer, data=Full.Data.Percentage.Change, index=c("Country", "Year"), mode="within")
summary(FEmodel5)
#seems that Urban Percentage change does increase GDP growth
#let's see if the relationship is causal
grangertest(Full.Data.Percentage.Change$LogGDP ~ Full.Data.Percentage.Change$UrbPer, order=10)
#it seems to be
#now let's do it in the opposite direction
grangertest(Full.Data.Percentage.Change$UrbPer ~ Full.Data.Percentage.Change$LogGDP, order=10)
#seems to also be causal, but to a lesser degree
#they both interact with each other, but UrbPer on LogGDP has more effect
#let's test for heteroskedasticity
bptest(FEmodel5)
#looks like it is, will need correcting
#now let's test for stationarity
adf.test(Full.Data.Percentage.Change$LogGDP)
adf.test(Full.Data.Percentage.Change$UrbPer)
#both look stationary; cool!
#however, we never checked if the fixed effect model is appropriate
#let's do that now by making an OLS model and doing an F test for fixed effects
OLSmodel5 <- lm(LogGDP ~ UrbPer, data=Full.Data.Percentage.Change)
summary(OLSmodel5)
#ok, now let's do the test
#now let's do an F test for Fixed Effect
pFtest(FEmodel5, OLSmodel5)
#looks like, surprisingly, the fixed effects disappear with percentage change
#therefore, the OLS model is more appropriate
#let's look at it again
summary(OLSmodel5)
#still very significant effects, it seems
#let's test this model for heteroskedasticity
bptest(OLSmodel5)
#still heteroskedastic, so still needs to be corrected
abline(OLSmodel5)
#hm, the R squared on this is abysmally low
#maybe it would be better if we look at percentage change of > 1 million?
#let's try it
Full.Data.P.C.2 <- read.csv("~/R Stuff/GDP and Cities/Full Data P C 2.csv")
plot(Full.Data.P.C.2$UrbPer1, Full.Data.P.C.2$GDPLog)
#model time
OLSmodel6 <- lm(GDPLog ~ UrbPer1, data=Full.Data.P.C.2)
summary(OLSmodel6)
abline(OLSmodel6)
