## mroz87 data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/mroz87.csv')
str(df)

# Regression line #
fm1 = wage ~ we 
mod1 = lm(formula=fm1, data=df)
summary(mod1)

# Multiple regression #
fm2 = wage ~ . 
mod2 = lm(formula=fm2, data=df)
summary(mod2)
