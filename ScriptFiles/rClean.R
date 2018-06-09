# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/6/2018

library("dplyr")
mydata = read.csv("C:\\Users\\radhapavan\\Documents\\GitHub\\Rprogram\\Files\\sampledataStates.csv")
print(mydata)

# Get the person detail having max salary.Remove NA
retval <- subset(data, !is.na(salary))
print(retval)