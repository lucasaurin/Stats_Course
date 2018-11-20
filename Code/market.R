## market data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/market.csv')
str(df)
N = nrow(df)

# Regression model #
fm = salary ~ market
mod = lm(formula=fm, data=df)
summary(mod)

# Graphics (1) #
plot(formula=fm, data=df, pch='.', xlab='Marketability',
  ylab='Salary')
abline(coefficients(mod))

# Graphics (2) #
par(mfrow=c(1,2))
hist(mod$residuals, main="", xlab='Residuals')
qqnorm(mod$residuals, main='', pch='.', xlab='Standard normal quantiles',
  ylab='Residuals')
qqline(mod$residuals)

# Normality test #
library(e1071)
Sk = skewness(mod$residuals)
Ku = kurtosis(mod$residuals)
JB = (N/6)*(Sk^2 + (Ku^2/4))
P = 1 - pchisq(JB, df=2)
