# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/8/2018

mydata <- c(10,15,20,22,82,54)
# mean,median,25th and 75th quartiles,min,max
sm <- summary(mydata)
print(sm)


print(is.na(mydata)) # returns TRUE of x is missing
y <- c(1,2,3,NA)
print(is.na(y)) # returns a vector (F F F T)

data <- read.csv("C:\\Users\\radhapavan\\Desktop\\R Tutorial\\input.csv")
print(data)
sm <- summary(data$salary)
print(sm)
print(mean(data$salary)) # returns NA
print(mean(data$salary, na.rm=TRUE)) # returns


# list rows of data that have missing values
print(data[!complete.cases(data),])

# create new dataset without missing data
dtx <- na.omit(data)
print(dtx)
# Create a vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)

# Find Mean.
result.mean <- mean(x)
print(result.mean)

# Find Mean.
result.mean <-  mean(x,trim = 0.3)
print(result.mean)

# Find mean dropping NA values.
result.mean <-  mean(x,trim = 0.3, na.rm = TRUE)
print(result.mean)

# Create the vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)

# Find the median.
median.result <- median(x)
print(median.result)

# Create the function.
getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)

# Calculate the mode using the user function.
result <- getmode(v)
print(result)

variance.result = var(x) # calculate variance
print (variance.result)


sd.result = sqrt(var(x)) # calculate standard deviation
print (sd.result)

pdf("plots4.pdf")
x <- c(8,2,7,1,2,9,8,2,10,9)
#Exploratory Data Analysis
hist(x)
boxplot(x)
dev.off()
