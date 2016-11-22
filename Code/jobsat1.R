## jobsat1 data set ##

# Importing data #
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016")
df = read.csv("Data/jobsat1.csv")
str(df)

# Formula #
fm = sat ~ country

# t test (equal variances) #
df1 = df[df$country!="SP", ]
t.test(formula=fm, data=df1, var.equal=T)

# t test (alternative) #
t.test(formula=fm, data=df1, var.equal=F)

# One-way ANOVA test #
aov.model = aov(formula=fm, data=df)
summary(aov.model)

# Linear regression (2 groups) #
reg.model1 = lm(formula=fm, data=df1)
summary(reg.model1)

# Linear regression (3 groups) #
reg.model2 = lm(formula=fm, data=df)
summary(reg.model2)
