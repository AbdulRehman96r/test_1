library("readxl")
library(readxl)
my_data2 <- read_excel("data2.xlsx", col_types = c("numeric", 
                                                   "numeric", "numeric"))
View(my_data2)
str(my_data2)

head(my_data2)

tail(my_data2)

plot(my_data2)
boxplot(my_data2$`Height(Inches)` , my_data2$`Weight(Pounds)`)
boxplot(my_data2$`Height(Inches)` , my_data2$Index)
