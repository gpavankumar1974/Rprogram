# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/2/2018

x <- 35L
if(is.integer(x)) {
   print("X is an Integer")
}

# R Switch Statement Example

number1 <- 30
number2 <- 20
operator <- readline(prompt="Please enter any ARITHMETIC OPERATOR You wish!: ")
operator = "M"
switch(operator,
       "+" = print(paste("Addition of two numbers is: ", number1 + number2)),
       "-" = print(paste("Subtraction of two numbers is: ", number1 - number2)),
       "*" = print(paste("Multiplication of two numbers is: ", number1 * number2)),
       "^" = print(paste("Exponent of two numbers is: ", number1 ^ number2)),
       "/" = print(paste("Division of two numbers is: ", number1 / number2)),
       "%/%" = print(paste("Integer Division of two numbers is: ", number1 %/% number2)),
       "%%" = print(paste("Division of two numbers is: ", number1 %% number2)),
        print("default statenent")
)
