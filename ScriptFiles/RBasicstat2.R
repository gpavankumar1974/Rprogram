# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/8/2018

print(Sys.time())
#print(strftime(Sys.Date(),'%A: %B %d, %Y (Day %j of %Y)'))
#print(format(Sys.time(), "%a %b %d %X %Y"))
Ft <- format(Sys.time(), "BasicPDF_%a_%b_%d_%Y_%H%M%S")
filename= paste(Ft,".pdf",sep="")
print(filename)

pdf(filename)
x <- c(8,2,7,1,2,9,8,2,10,9)
#Exploratory Data Analysis
hist(x)
boxplot(x)

mtcars
#print(head(mtcars))
#str(mtcars)
#print(summary(mtcars$wt))
#print(hist(mtcars$wt))
#print(boxplot(mtcars$wt))

require(graphics)
pairs(mtcars, main = "mtcars data", gap = 1/4)
coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
       panel = panel.smooth, rows = 1)
## possibly more meaningful, e.g., for summary() or bivariate plots:
mtcars2 <- within(mtcars, {
   vs <- factor(vs, labels = c("V", "S"))
   am <- factor(am, labels = c("automatic", "manual"))
   cyl  <- ordered(cyl)
   gear <- ordered(gear)
   carb <- ordered(carb)
})
#summary(mtcars2)

airquality
print(head(airquality))
#Summary Statistics
print(dim(airquality))









dev.off()




