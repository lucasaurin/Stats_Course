## Homework 10 ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/mroz87.csv')
str(df)

# Regression line #
fm1a = wage ~ we 
mod1a = lm(formula=fm1a, data=df)
summary(mod1a)
fm1b = log(wage) ~ we 
mod1b = lm(formula=fm1b, data=df)
summary(mod1b)

# Multiple regression #
fm2a = wage ~ . 
mod2a = lm(formula=fm2a, data=df)
summary(mod2a)
fm2b = log(wage) ~ . 
mod2b = lm(formula=fm2b, data=df)
summary(mod2b)
