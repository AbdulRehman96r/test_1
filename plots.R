library(readxl)
my_data <- read_excel("data2.xlsx", col_types = c("numeric", 
                                                  "numeric", "numeric"))
View(my_data)

# Strip chart

stripchart(my_data)

stripchart(my_data2$`Height(Inches)` ~ my_data2$`Weight(Pounds)`)


# histrogram

hist(my_data2$`Weight(Pounds)`)
hist(my_data$`Height(Inches)`)

# scatter plot

plot(my_data$`Height(Inches)`)
plot(my_data$`Weight(Pounds)`)
plot(my_data$`Height(Inches)` , my_data$`Weight(Pounds)`)

# qqnorm plot

qqnorm(my_data2$`Height(Inches)`)

# bar plot
 
barplot(my_data$`Height(Inches)`)
barplot(my_data2$`Weight(Pounds)`)

#mosaci plot

mosaicplot(~ my_data$`Height(Inches)`+ my_data$`Weight(Pounds)`)
rm()

# box plot
boxplot(my_data2$`Height(Inches)` , my_data2$`Weight(Pounds)`)
boxplot(my_data2$`Height(Inches)` , my_data2$Index)