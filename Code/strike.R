## strike data set ##

# Setting working directory (customize)
setwd("/Users/miguel/Dropbox/STAT-2017")

# Importing data #
strike <- read.csv("Data/strike.csv")
str(strike)
summary(strike)

# Figure 8.1 (customize) #
pdf("Figures/fig 8.1.pdf", width=3.25, height=3.5, pointsize=7)
hist(strike$duration, main="", xlab="Strike duration (days)")
dev.off()

# Mean and standard deviation #
mean(strike$duration)
sd(strike$duration)

# Skewness and kurtosis (install e1071 package first) #
library(e1071)
skewness(strike$duration)
kurtosis(strike$duration)

# Compare with random sample from exponential #
x <- rexp(1000, rate=1/42.67)
mean(x)
sd(x)
skewness(x)
kurtosis(x)
