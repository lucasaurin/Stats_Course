## strike data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/strike.csv')
str(df)
summary(df)

# Figure 4.1 (customize) #
pdf("Figures/fig 4.1.pdf", width=3.25, height=3.5, pointsize=7)
hist(df$duration, main="", xlab="Strike duration (days)")
dev.off()

# Mean and standard deviation #
mean(df$duration)
sd(df$duration)

# Skewness and kurtosis (install e1071 package first) #
library(e1071)
skewness(df$duration)
kurtosis(df$duration)

# Compare with random sample from exponential #
x = rexp(1000, rate=1/42.67)
mean(x)
sd(x)
skewness(x)
kurtosis(x)
