## STAT-15 - Homework ##

# Importing data #
url1 <- "https://raw.githubusercontent.com/cinnData/STAT/master/Data/"
url2 <- "scapital.csv"
url <- paste(url1, url2, sep="")
scapital <- read.csv(url)
head(scapital)

# Averaging items #
scapital$scstr <- apply(scapital[, 1:3], 1, mean)
scapital$sccog <- apply(scapital[, 4:7], 1, mean)
scapital$screl <- apply(scapital[, 8:14], 1, mean)

# t tests (equal variances) #
t.test(scstr ~ female, data=scapital, var.equal=T)
t.test(sccog ~ female, data=scapital, var.equal=T)
t.test(screl ~ female, data=scapital, var.equal=T)

# t tests (equal variances not assumed) #
t.test(scstr ~ female, data=scapital, var.equal=F)
t.test(sccog ~ female, data=scapital, var.equal=F)
t.test(screl ~ female, data=scapital, var.equal=F)

