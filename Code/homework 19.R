## Exercise 19.A ##

# Importing data
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016")
df = read.csv("Data/wage1.csv")
str(df)

# Unrestricted model #
ur <- log(wage) ~ . + I(exper^2)
ur.model <- lm(formula=ur, data=df)
summary(ur.model)

# Restricted model #
re = log(wage) ~ educ + tenure
re.model <- lm(formula=re, data=df)
summary(re.model)
anova(ur.model, re.model)
