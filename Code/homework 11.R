# STAT-11 - Homework ##

# Loading package #
library(e1071)

# Exercise A #
x <- rpois(250, 25)
par(mfrow=c(1,2))
hist(x, main="Histogram", xlab="Poisson sample")
qqnorm(x, pch=20)
qqline(x)

# Exercise B #
sim <- function(n) {
  A <- matrix(rexp(500*n), ncol=n)
  xbar <- apply(A, 1, mean)
  hist(xbar, main="Histogram", xlab="Exponential sample")
  qqnorm(xbar, pch=20)
  qqline(xbar)
}
sim(5)
sim(10)
sim(50)

# Exercise C #
sim <- function(n) {
  A <- matrix(rnorm(500*n), ncol=n)
  skew <- apply(A, 1, skewness)
  kurt <- apply(A, 1, kurtosis)
  JB <- (n/6)*(skew^2 + kurt^2/4)
  sim <- data.frame(skew, kurt, JB)
  return(sim)
}
M <- sim(500)
par(mfrow=c(1,3))
hist(M$skew, main="", xlab="Sample skewness", breaks=15)
hist(M$kurt, main="", xlab="Sample kurtosis", breaks=15)
hist(M$JB[M$JB < 7], main="", xlab="Jarque-Bera statistic", breaks=15)
