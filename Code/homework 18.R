## homework 18 ##

# Importing data #
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016")
df = read.csv("Data/market.csv")

# Exercise A #
mod1 <- lm(log(salary) ~ market, data=df)
summary(mod1)
exp(mod1$coefficients[2]*0.1)

# Exercise B #
summary(df$market)
df$market3 <- ifelse(df$market <= 0.8, "LOW",
  ifelse(df$market>1, "HIGH", "MEDIUM"))
mod2 <- aov(log(salary) ~ market3, data=df)
summary(mod2)

# Exercise C #
df$market2 <- df$market > 0.9
t.test(log(salary) ~ market2, data=df, var.equal=T)
mod3 <- lm(log(salary) ~ market2, data=df)
summary(mod3)
