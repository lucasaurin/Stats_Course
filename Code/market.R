## market data set ##

# Importing data
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016")
df = read.csv("Data/market.csv")
N = nrow(df)

# Regression model
mod = lm(formula=salary ~ market, data=df)
summary(mod)

# Graphics (1)
plot(df$market, df$salary, pch=".", xlab="Marketability", ylab="Salary")
abline(coefficients(mod))

# Graphics (2)
res = mod$residuals
lab1 = c("Standard normal quantiles"); lab2 = c("Residuals")
hist(res, main="", xlab=lab2)
qqnorm(res, main="", xlab=lab1, ylab=lab2)
qqline(res)

# Normality check
library(e1071)
skewness(res)
kurtosis(res)
JB = (N/6)*(skewness(res)^2 + (kurtosis(res)^2/4))
P = 1-pchisq(JB, df=2)
