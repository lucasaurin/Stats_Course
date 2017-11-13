# STAT-12 - Homework ##

# Sample size 1 #
xbar1 <- rexp(10^3)
hist(xbar1)

# Sample size 5 #
M5 <- matrix(rexp(5*10^3), ncol=5)
xbar5 <- apply(M5, 1, mean)
hist(xbar5)

# Sample size 10 #
M10 <- matrix(rexp(10*10^3), ncol=10)
xbar10 <- apply(M10, 1, mean)
hist(xbar10)

# Sample size 50 #
M50 <- matrix(rexp(50*10^3), ncol=50)
xbar50 <- apply(M50, 1, mean)
hist(xbar50)
