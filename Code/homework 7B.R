# Homework 7B ##

# Auxiliar function #
mad = function(x) mean(abs(x - mean(x)))

# Simulation #
M = matrix(rnorm(50000), ncol=50)
sigmahat = sqrt(pi/2)*apply(M, 1, mad)
s = apply(M, 1, sd)

# Bias #
mean(sigmahat)
mean(s)

# Efficiency #
sd(sigmahat)
sd(s)

# Graphical presentation #
par(mfrow=c(1,2))
hist(sigmahat, main='', xlab='MAD estimator of standard deviation', breaks=15)
hist(s, main='', xlab='Sample standard deviation', breaks=15)
