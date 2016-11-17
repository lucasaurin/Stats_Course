# STAT-10 - Homework ##

# Loading package #
library(e1071)

# Version 1 #
A <- matrix(rexp(10000), ncol=10)
B <- matrix(rexp(10000), ncol=10)
C <- sapply(1:1000, function(i) cor(A[i,], B[i,]))
mean(C)
sd(C)
skewness(C)
kurtosis(C)
par(mfrow=c(1,2))
hist(C, main="Histogram", xlab="Sample correlation")
qqnorm(C, pch=20)
qqline(C)

# Version 2 #
N <- 10
C <- cor(rexp(N), rexp(N))
for(i in 2:1000) C[i] <- cor(rexp(N), rexp(N))
