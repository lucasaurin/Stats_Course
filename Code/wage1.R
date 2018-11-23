## wage1 data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/wage1.csv')
str(df)

# Unrestricted model #
ur = log(wage) ~ .
ur.model = lm(formula=ur, data=df)
summary(ur.model)

# Restricted model (1) #
re1 = log(wage) ~ educ + tenure
re1.model = lm(formula=re1, data=df)
summary(re1.model)
anova(ur.model, re1.model)

# Restricted model (2) #
re2 = log(wage) ~ 1
re2.model = lm(formula=re2, data=df)
summary(re2.model)
anova(ur.model, re2.model)

# Restricted model (3) #
re3 = log(wage) ~ educ
re3.model = lm(formula=re3, data=df)
summary(re3.model)
anova(ur.model, re3.model)
