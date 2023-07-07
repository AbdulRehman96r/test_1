data()
View(CO2)
view(PlantGrowth)
view(iris)
View(Titanic)
view(mtcars)

head(CO2)
tail(CO2)
nrow(CO2)
ncol(CO2)



install.packages("writexl")
library(writexl)

write_xlsx(CO2, path = "C:\\Users\\TOSHIBA\\Desktop\\test_1\\co2.xlsx")
 
library(ggplot2)
ggplot(trees, aes(Girth , Height)) +geom_point() + geom_smooth(method = "lm")
  