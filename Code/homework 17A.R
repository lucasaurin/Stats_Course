## Exercise 17.A ##

# Importing data #
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016/Data")
mroz <- read.csv("mroz87.csv")
str(mroz)

# Checking skewness #
summary(mroz$wage)
library(e1071)
skewness(mroz$wage)
hist(mroz$wage)

# Alternative regression #
fm <- log(wage) ~ . 
mod <- lm(formula=fm, data=mroz)
summary(mod)

# Interpretation of edfucation effect #
exp(mod$coefficients[3])
