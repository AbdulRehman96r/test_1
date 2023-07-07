library(readxl)
data <- read_excel("data2.xlsx", sheet = "Sheet1 (2)", 
                   col_types = c("text", "numeric", "numeric", 
                                 "text"))
View(data)

#mean

mean(data$weight)
mean(data$Height)

#median

median(data$Height)
median(data$weight)


#max
max(data$Height)
max(data$weight)
 

#min
min(data$Height)
min(data$weight)


#range
range(data$Height)
range(data$weight)


#quantatile range

quantile(data$Height, .25)

quantile(data$Height, .75)

#standard deviation

sd(data$Height)

sd(data$weight)


#variance

var(data$Height)
var(data$weight)

#combine mean, sd ,median of all coulm

lapply(data[,2:3], mean )
lapply(data[,2:3], sd )
lapply(data[,2:3], median )

#Statiscal summary of your data


summary(data)

#anova

a1 <- aov(data$Height ~ data$crop)

summary(a1)

#tuckey test

TukeyHSD(a1)


#group wise anov 

a2 <- aov(data$Height ~ data$crop * data$water)
summary(a2)

TukeyHSD(a2)


















