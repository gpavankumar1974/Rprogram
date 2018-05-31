# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 5/30/2018


# Get and print current working directory.
print(getwd())

data <- read.csv("C:\\Users\\radhapavan\\Desktop\\R Tutorial\\input.csv")
print(data)

print(is.data.frame(data))
print(paste0("Hai", dim(data)))
print(paste0("Hai", dim(data)))
print(is.data.frame(data))

#paste("Columns",ncol(data))

#cat(sprintf("Number of Columns: %s\n", ncol(data)))
cat(sprintf("Number of Rows: %s\n", nrow(data)))
#cat(sprintf("Dimension %s\n", dim(data)))


# Get the person detail having max salary.Remove NA
retval <- subset(data, !is.na(salary))
#print(retval)

# Get the max salary from data frame.
sal <- max(retval$salary)
print(sal)

