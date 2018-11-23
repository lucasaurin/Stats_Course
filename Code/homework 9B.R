## Homework 9B ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/scapital.csv')
str(df)

# Averaging items #
df$scstr = apply(df[, 1:3], 1, mean)
df$sccog = apply(df[, 4:7], 1, mean)
df$screl = apply(df[, 8:14], 1, mean)
head(df)

# t tests (equal variances) #
t.test(scstr ~ female, data=df, var.equal=TRUE)
t.test(sccog ~ female, data=df, var.equal=TRUE)
t.test(screl ~ female, data=df, var.equal=TRUE)

# Kruskal-Wallis test #
kruskal.test(formula=scstr ~ female, data=df)
kruskal.test(formula=sccog ~ female, data=df)
kruskal.test(formula=screl ~ female, data=df)
