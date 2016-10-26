## roeroa data set ##

# Setting working directory (customize) #
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016")

# Importing data #
roeroa <- read.csv("Data/roeroa.csv")
str(roeroa)
head(roeroa)
summary(roeroa)

# Regression line #
mod1 <- lm(formula=roa ~ roe, data=roeroa)
summary(mod1)

# Plotting #
plot(formula=roa ~ roe, data=roeroa, main="Regression line", xlab="ROE", ylab="ROA", pch=20)
abline(mod1)

# Trimming data #
trim <- roeroa$roe<100 & roeroa$roa<35
mod2 <- lm(formula=roa ~ roe, data=roeroa[trim,])
summary(mod2)

# Plotting #
plot(formula=roa ~ roe, data=roeroa[trim, ], main="Regression line", xlab="ROE", ylab="ROA", pch=20)
abline(mod2)

