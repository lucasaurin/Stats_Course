## mroz87 data set ##

# Importing data (customize) #
mroz <- read.csv("mroz87.csv")
str(mroz)

# Regression line #
fm1 <- wage ~ we 
mod1 <- lm(formula=fm1, data=mroz)
summary(mod1)

# Multiple regression #
fm2 <- wage ~ . 
mod2 <- lm(formula=fm2, data=mroz)
summary(mod2)
