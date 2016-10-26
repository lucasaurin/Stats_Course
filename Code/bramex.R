## bramex data set ##

# Setting working directory (customize)
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016")

# Importing data #
bramex <- read.csv("Data/bramex.csv")
str(bramex)
summary(bramex)

# Regression line #
reg.model <- lm(formula=mex ~ bra, data=bramex)
names(reg.model)
reg.model$coefficients
summary(reg.model)
summary(reg.model)$r.squared

# Correlation analysis #
cor(bramex$bra, bramex$mex)
cor(bramex[, -1])

# Figure 1.1 (customize) #
pdf("Figures/fig 1.1.pdf",width=3.25,height=3.5,pointsize=7)
plot(bramex$bra, bramex$mex, main="", xlab="Brazil", ylab="Mexico", pch=20)
dev.off()

# Figure 1.2 (customize) #
pdf("Figures/fig 1.2.pdf",width=3.25,height=3.5,pointsize=7)
plot(bramex$bra, bramex$mex, main="", xlab="Brazil", ylab="Mexico", pch=20)
abline(model)
dev.off()
