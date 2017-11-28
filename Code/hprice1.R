## hprice1 data set ##

# Reading data set (customize) #
hprice <- read.csv("hprice1.csv")

# Exporting to Stata (customize) #
library(foreign)
write.dta(hprice, file="hprice1.dta")

# Importing from Stata (customize) #
library(foreign)
hprice <- read.dta("hprice1.dta")

# Exploration #
summary(hprice)
cor(hprice)

# Common linear regression #
fm1 <- price ~ bdrms + lotsize + sqrft
mod1 <- lm(formula=fm1, data=hprice)
summary(mod1)

# Heteroskedasticity-adjusted standard errors #
library(sandwich)
V1 <- vcovHC(mod1, type="HC1")
library(lmtest)
coeftest(mod1, vcov=V1)

# Exploring heteroskedasticity #
res_df <- data.frame(res2=mod1$residuals^2, hprice[, -1])
cor(res_df)
res_fm <- res2 ~ bdrms + lotsize + sqrft
res_mod <- lm(formula=res_fm, data=res_df)
summary(res_mod)

# Breusch-Pagan (chisq version) as presented in Wooldridge, ch 8 #
bptest(mod1)

# Reducing heteroskedasticity with log transformation #
fm2 <- log(price) ~ bdrms + lotsize + sqrft
mod2 <- lm(formula=fm2, data=hprice)
summary(mod2)
bptest(mod2)
V2 <- vcovHC(mod2, type="HC1")
coeftest(mod2, vcov=V2)

# A simple explanation #
pairs(hprice[, c(1,3,4)])
