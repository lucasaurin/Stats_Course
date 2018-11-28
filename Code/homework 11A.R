## Homework 11A ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/wage1.csv')
str(df)

# Unrestricted model #
ur = log(wage) ~ educ + tenure + exper + I(exper^2)
ur.model = lm(formula=ur, data=df)
summary(ur.model)

# Restricted model #
re = log(wage) ~ educ + tenure
re.model = lm(formula=re, data=df)
summary(re.model)
anova(re.model, ur.model)
