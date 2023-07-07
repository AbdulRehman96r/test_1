library(readxl)Anova_multiple__mean_comparison
my_data2 <- read_excel("data2.xlsx", col_types = c("text", 
                                                   "numeric", "numeric"))
View(my_data2)

boxplot(my_data2$Height ~ my_data2$crop)

#labelling 

boxplot(Height ~ crop , data = my_data2)


boxplot(Height ~ crop , data = my_data2,main="Boxplot of expirement", 
        xlab = "Crop Type" , ylab = "Plant height")


#coloring

boxplot(Height ~ crop , data = my_data2,main="Boxplot of expirement", 
        xlab = "Crop Type" , ylab = "Plant height",
        col="red" , broder = "white")

#grouping of treatment


library(readxl)
treatment <- read_excel("data2.xlsx", sheet = "Sheet1 (2)", 
                        col_types = c("text", "numeric", "numeric", 
                                      "text"))
View(treatment)
treatment$crop <- factor(treatment$crop, levels = c("Wheat", "maze", "rice"))
  
 boxplot(treatment$Height ~ treatment$crop*treatment$water,
         main= "Boxblot of Expeire ment"  , xlab = "height",
         ylab = "water")

  
 

