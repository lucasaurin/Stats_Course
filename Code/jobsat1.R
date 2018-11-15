## jobsat1 data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/jobsat1.csv')
str(df)

# Formula #
fm = sat ~ country

# t test (equal variances) #
t.test(formula=fm, data=df[df$country!='SP', ], var.equal=TRUE)

# t test (unequal variances) #
t.test(formula=fm, data=df[df$country!='SP', ], var.equal=FALSE)
t.test(df$sat[df$country=='CH'], df$sat[df$country=='ME'], paired=FALSE)

# Group distributions #
par(mfrow=c(1,2))
hist(df$sat[df$country=='CH'], main='', xlab='Job satisfaction (Chile)')
hist(df$sat[df$country=='ME'], main='', xlab='Job satisfaction (Mexico)')

# Wilcoxon rank sum test #
wilcox.test(df$sat[df$country=='CH'], df$sat[df$country=='ME'], paired=FALSE)

# One-way ANOVA test #
aov.model = aov(formula=fm, data=df)
summary(aov.model)

# Residual analysis #
hist(aov.model$residuals, main='', xlab='ANOVA residuals')
qqnorm(aov.model$residuals, main='', xlab='Standard normal quantiles',
  ylab='ANOVA residuals', pch=20)
qqline(aov.model$residuals)

# Kruskal-Wallis test #
kruskal.test(formula=fm, data=df)

# Linear regression (2 groups) #
reg.model1 = lm(formula=fm, data=df[df$country!='SP', ])
summary(reg.model1)

# Linear regression (3 groups) #
reg.model2 = lm(formula=fm, data=df)
summary(reg.model2)
