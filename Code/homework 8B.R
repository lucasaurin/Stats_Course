## Homework 8B ##

# Importing data (customize) #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/scapital.csv')
head(df)

# Averaging items #
df$scstr = apply(df[, 1:3], 1, mean)
df$sccog = apply(df[, 4:7], 1, mean)
df$screl = apply(df[, 8:14], 1, mean)
head(df)

# t tests (equal variances) #
t.test(scstr ~ female, data=df, var.equal=TRUE)
t.test(sccog ~ female, data=df, var.equal=TRUE)
t.test(screl ~ female, data=df, var.equal=TRUE)

# t tests (equal variances not assumed) #
t.test(scstr ~ female, data=df, var.equal=FALSE)
t.test(sccog ~ female, data=df, var.equal=FALSE)
t.test(screl ~ female, data=df, var.equal=FALSE)

