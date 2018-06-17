print("hi")
library(readr)
analysis.anova <- read.csv("C:/Users/radha/Desktop/KaranExcel/Analyst Case Study AutoFinance.csv", sep=",", header = TRUE)
print(head(analysis.anova))
print(str(analysis.anova))

library(eeptools)
#print(analysis.anova$dateOfBirth)
x <- as.Date(analysis.anova$dateOfBirth, , format="%m/%d/%Y")
#print(x)
#print(age_calc(x), units = "years")
yourdata.age <- floor(age_calc(x, units = "years"))
print(str(yourdata.age))
#cat(analysis.anova$city, analysis.anova$state )


# New age column in added
# New age column in added
newdata <- cbind(analysis.anova,yourdata.age)
print(analysis.anova)
print(head(newdata))

## count, monthly Income
library(dplyr)
result <- newdata %>% group_by(employmentType) %>%  summarize(n(), sum(monthlyIncome) , meansinc = mean(monthlyIncome))
#barplot(newdata$monthlyIncome, names.arg=newdata$emplomentType)
print(result)
print(str(result))

# bar 
category1 <- c("1099/Self Employed","Fixed Income" , "W2 Employee" )
colr <- c("red","green","blue")
barplot(result$meansinc, names.arg=category1, col =colr)

print(count(newdata, creditScore, employmentType))

table1 <- table(result2$employmentType, dnn=c( "creditScore","employmentType" )) # Creates a contingency table
addmargins(table1) #Displays the table (Not necessary)

barplot(table1, ylab="Frequency", xlab="Gears", main="Side-By-Side Bar Chart", col=c("turquoise4", "turquoise2", "turquoise" ), beside=TRUE, width=.3)

legend("right", title="Cylinders", legend= sort(unique(result2$employmentType)), fill =c("turquoise4", "turquoise2", "turquoise" ), box.lty=0)



result2 <- newdata %>%   group_by(creditScore , employmentType) %>%    summarise(ct = n())
print(result2)

print(class(result2))

table1 <- table(newdata$creditScore, newdata$employmentType, dnn=c("creditScore,", "employmentType")) # Creates a contingency table
addmargins(table1) #Displays the table (Not necessary)

barplot(table1, ylab="Total count", xlab="employmen tType", main="Side-By-Side Bar Chart", col=c("green", "blue", "orange" ), beside=TRUE, width=.3)

legend("top", title=" Type of Employess Vs. Credit Scores", legend= sort(unique(result2$employmentType)), fill =c("green", "blue", "orange" ), box.lty=0)

