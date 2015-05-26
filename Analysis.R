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
grangertest(Full.Data$GDPLog ~ Full.Data$UrbPer, order=5)
#definitely causal in that direction
#let's check the opposite direction
grangertest(Full.Data$UrbPer ~ Full.Data$GDPLog, order=5)
#not causal in this direction