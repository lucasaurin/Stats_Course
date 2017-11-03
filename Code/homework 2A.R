## Homework 2A ##

# Importing data (customize) #
setwd("/Users/miguel/Dropbox/STAT-2017")
roeroa <- read.csv("Data/roeroa.csv", stringsAsFactors=F)
str(roeroa)
head(roeroa)
summary(roeroa)

# Regression line #
mod1 <- lm(formula=roa ~ roe, data=roeroa)
summary(mod1)

# Plotting #
plot(formula=roa ~ roe, data=roeroa, main="Regression line",
  xlab="ROE", ylab="ROA", pch=20)
abline(mod1)

# Trimming data #
trim <- roeroa$roe < 100 & roeroa$roa < 35
mod2 <- lm(formula=roa ~ roe, data=roeroa[trim, ])
summary(mod2)

# Plotting #
plot(formula=roa ~ roe, data=roeroa[trim, ],
  main="Regression line", xlab="ROE", ylab="ROA", pch=20)
abline(mod2)

