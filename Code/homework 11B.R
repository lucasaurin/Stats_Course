## Homework 11B ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/ceosal2.csv')
str(df)

# Correlation matrix #
R = cor(data.frame(log(df$sales), log(df$mktval), df$profit))
round(R, 2)

# VIF calculation #
Rsq1 = summary(lm(log(sales) ~ log(mktval) + profits, data=df))$r.square
round(Rsq1, 3)
VIF1 = 1/(1 - Rsq1)
round(VIF1, 2)
Rsq2 = summary(lm(log(mktval) ~ log(sales) + profits, data=df))$r.square
round(Rsq2, 3)
VIF2 = 1/(1 - Rsq2)
round(VIF2, 2)
Rsq3 = summary(lm(profits ~ log(sales) + log(mktval), data=df))$r.square
round(Rsq3, 3)
VIF3 = 1/(1 - Rsq3)
round(VIF3, 2)
