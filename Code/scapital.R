## scapital data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/scapital.csv')
head(df)

# Averaging items #
df$screl = apply(df[, 8:14], 1, mean)

# Group statistics #
N = table(df$female)
N
xbar = tapply(df$screl, df$female, mean)
xbar
s = tapply(df$screl, df$female, sd)
s

# Confidence limits for the male group #
t_alpha = qt(0.975, df=N[1]-1)
t_alpha
pm = t_alpha*s[1]/sqrt(N[1])
CI_male = c(xbar[1] - pm, xbar[1] + pm)
CI_male

# Confidence limits for the female group #
t_alpha = qt(0.975, df=N[2]-1)
t_alpha
pm = t_alpha*s[2]/sqrt(N[2])
CI_female = c(xbar[2] - pm, xbar[2] + pm)
CI_female
