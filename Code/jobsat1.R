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

# Group distributions #
par(mfrow=c(1,2))
hist(df$sat[df$country=="CH"], main="", xlab="Job satisfaction (Chile)")
hist(df$sat[df$country=="ME"], main="", xlab="Job satisfaction (Mexico)")

# One-way ANOVA test #
aov.model = aov(formula=fm, data=df)
summary(aov.model)

# Residual analysis #
hist(aov.model$residuals, main="", xlab="ANOVA residuals")
qqnorm(aov.model$residuals, main="", xlab="Standard normal quantiles", ylab="ANOVA residuals",
  pch=20)
qqline(aov.model$residuals)

# Linear regression (2 groups) #
reg.model1 = lm(formula=fm, data=df1)
summary(reg.model1)

# Linear regression (3 groups) #
reg.model2 = lm(formula=fm, data=df)
summary(reg.model2)
