## scapital data set ##

# Importing data #
url1 <- "https://raw.githubusercontent.com/cinnData/STAT/master/Data/"
url2 <- "scapital.csv"
url <- paste(url1, url2, sep="")
scapital <- read.csv(url)
head(scapital)

# Averaging items #
scapital$screl <- apply(scapital[, 7:14], 1, mean)

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

