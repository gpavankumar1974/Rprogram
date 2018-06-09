# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/8/2018
pdf("plots3.pdf")
v <- c(0,1,2)
print(dnorm(v))
x <- seq(-20,20,by=.1)
y <- pnorm(x,mean=3,sd=4, lower.tail=FALSE)
plot(x,y, main="P Norm Tail = FALSE")
y <- pnorm(x,mean=3,sd=4, lower.tail=TRUE)
z <- qnorm(y)
z <- qnorm(y)
plot(x,y, main="P Norm Tail = TRUE")
plot(x,z, main="Q Norm Fisrt sample")
x <- seq(0,1,by=.05)



y <- qnorm(x)
plot(x,y, main="Q Norm 2nd sample")


r <- rnorm(4,mean=3,sd=3)
print(r)
hist(r)

x <- seq(-20,20,by=.5)
y <- dt(x,df=10)
plot(x,y,main="T DT")
y <- dt(x,df=50)
plot(x,y, main="T DT  2nd")


x <- seq(0,100,by=1)
y <- dbinom(x,100,0.6)
print(y)
plot(x,y)

# finding P value
x = c(9.0,9.5,9.6,10.2,11.6)
print(t.test(x))

dev.off()
