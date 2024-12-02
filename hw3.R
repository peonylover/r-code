
rm(list=ls()) #Removes all items in Environment!
library(lmtest) #for coeftest() and bptest().
library(broom) #for glance() and tidy()
library(car) #for hccm() robust standard errors
library(sandwich)
library(knitr)
library(stargazer)
library(datasets)



data <-read.csv('hw.csv')

mod1 <- lm(food_exp~income, data=food)
plot(food$income,food$food_exp, type="p",
     xlab="income", ylab="food expenditure")
abline(mod1)

