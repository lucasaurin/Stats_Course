## hprice1 data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/hprice1.csv')
str(df)

# Exploration #
summary(df)
cor(df)

# Common linear regression #
fm1 = price ~ .
mod1 = lm(formula=fm1, data=df)
summary(mod1)

# Heteroskedasticity-adjusted standard errors #
library(sandwich)
V1 = vcovHC(mod1, type="HC1")
library(lmtest)
coeftest(mod1, vcov=V1)

# Exploring heteroskedasticity #
res_df = data.frame(res2=mod1$residuals^2, df[, -1])
cor(res_df)
res_fm = res2 ~ bdrms + lotsize + sqrft
res_mod = lm(formula=res_fm, data=res_df)
summary(res_mod)

# Breusch-Pagan (chisq version) as presented in Wooldridge, ch 8 #
bptest(mod1)

# Reducing heteroskedasticity with log transformation #
fm2 = log(price) ~ .
mod2 = lm(formula=fm2, data=df)
summary(mod2)
bptest(mod2)
V2 = vcovHC(mod2, type="HC1")
coeftest(mod2, vcov=V2)

# A simple explanation #
pairs(df[, c(1,3,4)])
