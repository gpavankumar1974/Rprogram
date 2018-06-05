# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/4/2018
library(ggplot2)

filepath ="C:\\Users\\radhapavan\\Documents\\GitHub\\Rprogram\\Files\\"
filename="landdata-states.csv"
filefull = paste(filepath,filename, sep = "")
housing <- read.csv(filefull)
h <- head(housing[1:5])
print(h)
#hist(housing$Home.Value)
ggl <- ggplot(housing, aes(x = Home.Value)) + geom_histogram()
#ggsave("myggplot.png")  # saves the last plot.
ggsave("myggplot.png", plot=ggl)  # save a stored ggplot


ggl2 <- ggplot(subset(housing, State %in% c("MA", "TX")),  aes(x=Date,     y=Home.Value, color=State))  + geom_point()
ggsave("myggplot2.png", plot=ggl2)  # save a stored ggplot

#scatter plot
hp2001Q1 <- subset(housing, Date == 2001.25)

# Lines (Prediction Line)
hp2001Q1$pred.SC <- predict(lm(Structure.Cost ~ log(Land.Value), data = hp2001Q1))
p1 <- ggplot(hp2001Q1, aes(x = log(Land.Value), y = Structure.Cost))

p1 + geom_point(aes(color = Home.Value)) +   geom_line(aes(y = pred.SC))

ggl3 <- p1 +   geom_point(aes(color = Home.Value)) +   geom_smooth()

ggsave("myggplot3.pdf", plot=ggl3)

p1 +  geom_text(aes(label=State), size = 3)