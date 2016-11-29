## mroz87 data set ##

# Importing data
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016/Data")
mroz = read.csv("mroz87.csv")
str(mroz)

# Regression line
fm1 = wage ~ we 
mod1 = lm(formula=fm1, data=mroz)
summary(mod1)

# Multiple regression
fm2 = wage ~ . 
mod2 = lm(formula=fm2, data=mroz)
summary(mod2)

