## Homework 9A ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/jobsat2.csv')
str(df)

# Testing gender effect #
tapply(df$sat, df$gender, mean)
t.test(formula=sat ~ gender, data=df, var.equal=TRUE)
mod1 = aov(formula=sat ~ gender, data=df)
summary(mod1)

# Rank-sum test #
wilcox.test(formula=sat ~ gender, data=df, paired=FALSE)

# Kruskal-Wallis test #
kruskal.test(formula=sat ~ gender, data=df)

# Testing country effect #
tapply(df$sat, df$country, mean)
mod2 = aov(formula=sat ~ country, data=df)
summary(mod2)

# Kruskal-Wallis test #
kruskal.test(formula=sat ~ country, data=df)
