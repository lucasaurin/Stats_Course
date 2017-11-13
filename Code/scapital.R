## scapital data set ##

# Setting working directory (customize)
setwd("C:/Users/mcanela/Dropbox (Personal)/STAT-2017")

# Importing data #
scapital <- read.csv(url)
head(scapital)

# Averaging items #
scapital$screl <- apply(scapital[, 8:14], 1, mean)

# Group statistics #
N <- table(scapital$female)
xbar <- tapply(scapital$screl, scapital$female, mean)
s <- tapply(scapital$screl, scapital$female, sd)

# t critical values #
t_alpha <- qt(0.975, df=N-1)

# Confidence limits #
pm <- t_alpha*s/sqrt(N)
CI_male <- c(xbar[1] - pm[1], xbar[1] + pm[1])
CI_female <- c(xbar[2] - pm[2], xbar[2] + pm[2])

