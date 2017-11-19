## market data set ##

# Importing data (custopmize) #
market <- read.csv("market.csv")
N <- nrow(market)

# Regression model #
fm <- salary ~ market
mod <- lm(formula=fm, data=market)
summary(mod)

# Graphics (1) #
plot(formula=fm, data=market, pch=".", xlab="Marketability", ylab="Salary")
abline(coefficients(mod))

# Graphics (2) #
par(mfrow=c(1,1))
res <- mod$residuals
lab1 <- c("Standard normal quantiles"); lab2 <- c("Residuals")
hist(res, main="", xlab=lab2)
qqnorm(res, main="", xlab=lab1, ylab=lab2)
qqline(res)

# Normality check #
library(e1071)
skewness(res)
kurtosis(res)
JB <- (N/6)*(skewness(res)^2 + (kurtosis(res)^2/4))
P <- 1 - pchisq(JB, df=2)
