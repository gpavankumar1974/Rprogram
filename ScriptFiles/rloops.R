# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/3/2018

v <- c("Hello","while loop")
#count Initialize
cnt <- 5
while (cnt <= 7) {
   print(cnt)
   print(v)
   cnt = cnt + 1
}


x <- c(2,5,3,9,8,11,6)

for (val in x) {
 print(val)
}

num=7
factorial = 1
for(i in 1:num) {
factorial = factorial * i
}
print(factorial)


# take input from the user
# as.integer(readline(prompt="Enter a number: "))
num = 6
factorial = 1
# check is the number is negative, positive or zero
if(num < 0) {
print("Sorry, factorial does not exist for negative numbers")
} else if(num == 0) {
print("The factorial of 0 is 1")
} else {
for(i in 1:num) {
factorial = factorial * i
}
print(paste("The factorial of", num ,"is",factorial))
}


# fibinocci
n1 = 0
n2 = 1
# Note count 2
count = 2
print("Fibonacci sequence:")
print(n1)
print(n2)
nterms = 8
while(count < nterms) {
    nth = n1 + n2
    print(nth)
    # update values
    n1 = n2
    n2 = nth
    count = count + 1
}

# Repeat

v <- c(100)
cnt <- 2

repeat {
   print(paste("count",cnt , "=", v))
   cnt <- cnt+1

   if(cnt > 5) {
      break
   }
}



v <- LETTERS[1:6]
for ( i in v) {

   if (i == "D") {
      next
   }
   print(i)
}
