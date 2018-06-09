# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/8/2018

# What is P(X > 19) when X has the N(17.46, 375.67) distribution?
pvalue <- pnorm(19, mean=17.46, sd=sqrt(375.67))
print(paste("Pvalue", round(pvalue,3)))

# What is F-1(0.95) when X has the N(100, 15^2) distribution?
qvalue <-qnorm(0.95, mean=100, sd=15)
print(paste("qvalue", round(qvalue,3)))


#rnorm

x <- rnorm(1000, mean=100, sd=15)
hist(x, probability=TRUE)
xx <- seq(min(x), max(x), length=100)
lines(xx, dnorm(xx, mean=100, sd=15))



#What is P(X = 1) when X has the Bin(25, 0.005) distribution?
dbnm <- dbinom(1, 25, 0.005)
print(paste("Binomial prob", round(dbnm,3)))


#Using just the population mean [μ = 67.99] and standard deviation [σ = 1.90],
# you can calculate the z-score for any given value of x. In this example I’ll use 72 for x.
pop_mean = 67.99
pop_sd =1.90
x = 72
z <- (x - pop_mean) / pop_sd
print(paste("Z score", round(z,3)))

p_yellow1 <- pnorm(72, pop_mean, pop_sd)    #using x, mu, and sigma
p_yellow2 <- pnorm(z)                       #using z-score of 2.107
p_blue1 <- 1 - p_yellow1   #using x, mu, and sigma
p_blue2 <- 1 - p_yellow2   #using z-score of 2.107

print(p_yellow1)
print(p_yellow2)
print(p_blue1)
print(p_blue2)
