# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/3/2018

# Function for Power X ^Y  eg: 2 ^ 4 = 2x2x2x2

pow <- function(x, y) {
# function to print x raised to the power y
result <- x^y
print(paste(x,"raised to the power", y, "is", result))
}

# Calling any function
pow(4,8)



tabcal <- function(x, y) {
# function to print x raised to the power y
result <- x*y
#print(paste(x,"Multiply", y, "is", result))
#  cat(paste(x,"Multiply", y, "is", result,"\n"))
}
# for new line, use  - cat
# Calling any function
tabcal(17,1:10)