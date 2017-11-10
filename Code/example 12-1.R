## STAT-12 - Example 1 ##

# Generating the simulated data #
M <- matrix(rnorm(10000), ncol=10)
xbar <- apply(M, 1, mean)
xtilde <- apply(M, 1, median)
s2 <- apply(M, 1, var)
df <- data.frame(xbar, xtilde, s2)
str(df)
df[1:10, ]

# Sampling distributions of the mean and the median #
mean(xbar)
var(xbar)
mean(xtilde)
var(xtilde)
par(mfrow=c(1,2))
hist(xbar, main="", breaks=20, xlab="Sample mean", ylab="")
hist(xtilde, main="", breaks=20, xlab="Sample median", ylab="")

## Sampling distribution of the variance ##
mean(s2)
var(s2)
hist(s2, main="", breaks=20, xlab="Sample variance", ylab="")
plot(s2 ~ xbar, main="", pch=20, xlab="Sample mean", ylab="Sample variance")
