# STAT-12 - Homework C ##

# Loading package #
library(e1071)

# Auxiliar functions #
mad <- function(x) (1/length(x))*sum(abs(x-mean(x))) 
sim <- function(n) {
  A <- matrix(rnorm(10000*n), ncol=n)
  sigma_hat <- sqrt(pi/2)*apply(A, 1, mad)
  s <- apply(A, 1, sd)
  sim <- data.frame(sigma_hat, s)
  return(sim)
}

# Running simulation #
df <- sim(5)

# Checking bias #
mean(df$sigma_hat)
mean(df$s)

# Graphical presentation #
par(mfrow=c(1,2))
hist(df$sigma_hat, main="", xlab="MAD estimator of standard deviation", breaks=15)
hist(df$s, main="", xlab="Sample standard deviation", breaks=15)


