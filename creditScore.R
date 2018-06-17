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
cbind(analysis.anova,yourdata.age)
print(analysis.anova)

