# STAT-13 - Homework ##

# Auxiliar function #
mad <- function(x) (1/length(x))*sum(abs(x-mean(x)))

# Simulation #
M <- matrix(rnorm(10000*5), ncol=5)
sigmahat <- sqrt(pi/2)*apply(M, 1, mad)
s <- apply(M, 1, sd)

# Bias #
mean(df$sigmahat)
mean(df$s)

# Efficiency #
sd(sigmahat)
sd(s)

# Graphical presentation #
par(mfrow=c(1,2))
hist(sigmahat, main="", xlab="MAD estimator of standard deviation", breaks=15)
hist(s, main="", xlab="Sample standard deviation", breaks=15)
