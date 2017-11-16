## jobsat1 data set ##

# Importing data (customize) #
jobsat <- read.csv("jobsat1.csv")
str(jobsat)

# Formula #
fm <- sat ~ country

# t test (equal variances) #
t.test(formula=fm, data=jobsat[jobsat$country!="SP", ], var.equal=T)
t.test(jobsat$sat[jobsat$country=="CH"], jobsat$sat[jobsat$country=="ME"],
  paired=F)

# t test (alternative) #
t.test(formula=fm, data=df1, var.equal=F)

# Group distributions #
par(mfrow=c(1,2))
hist(jobsat$sat[jobsat$country=="CH"], main="",
 xlab="Job satisfaction (Chile)")
hist(jobsat$sat[jobsat$country=="ME"],
  main="", xlab="Job satisfaction (Mexico)")

# Wilcoxon rank sum test #
wilcox.test(jobsat$sat[jobsat$country=="CH"], jobsat$sat[jobsat$country=="ME"],
  paired=F)

# One-way ANOVA test #
aov.model <- aov(formula=fm, data=jobsat)
summary(aov.model)

# Residual analysis #
hist(aov.model$residuals, main="", xlab="ANOVA residuals")
qqnorm(aov.model$residuals, main="", xlab="Standard normal quantiles",
  ylab="ANOVA residuals", pch=20)
qqline(aov.model$residuals)

# Kruskal-Wallis test #
kruskal.test(formula=fm, data=jobsat)



# Linear regression (2 groups) #
reg.model1 <- lm(formula=fm, data=df1)
summary(reg.model1)

# Linear regression (3 groups) #
reg.model2 <- lm(formula=fm, data=df)
summary(reg.model2)
