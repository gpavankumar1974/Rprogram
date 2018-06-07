# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/6/2018
# example using built-in dataset
mtcars
#print(t(mtcars))
attach(mtcars)
aggdata <-aggregate(mtcars, by=list(cyl,vs), FUN=mean, na.rm=TRUE)
print(aggdata)
detach(mtcars)

df <- data.frame(
    id = c(1,1,2,2),
    time = c(1,2,1,2),
    x= c(5,3,6,2),
    y= c (6,5,1,4)
)

print(df)

library(reshape)
mdata <- melt(df, id=c("id","time"))
print(mdata)

# cast the melted data
# cast(data, formula, function)
subjmeans <- cast(mdata, id~variable, mean)
timemeans <- cast(mdata, time~variable, mean)

print(subjmeans)
print(timemeans)