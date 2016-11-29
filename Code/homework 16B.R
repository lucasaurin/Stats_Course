## STAT-16 - Homework B ##

# Importing data #
url1 <- "https://raw.githubusercontent.com/cinnData/STAT/master/Data/"
url2 <- "jobsat2.csv"
url <- paste(url1, url2, sep="")
sat <- read.csv(url, stringsAsFactors=F)
str(sat)

# Testing gender effect #
tapply(sat$sat, sat$gender, mean)
t.test(sat ~ gender, data=sat, var.equal=T)
mod1 <- aov(sat ~ gender, data=sat)
summary(mod1)

# Testing country effect #
tapply(sat$sat, sat$country, mean)
mod2 <- aov(sat ~ country, data=sat)
summary(mod2)

# Testing gender effect by country #
tapply(sat$sat, list(sat$gender, sat$country), mean)
countries <- unique(sat$country)
f <- function(x) t.test(sat ~ gender, data=sat[sat$country==x,], var.equal=T)$p.value
p.values <- NULL
for(i in 1:9) p.values[i] <- f(countries[i])
data.frame(countries, p.values)
