library(readxl)
x <- read_excel("data2.xlsx", sheet = "Sheet1 (2)", 
                   col_types = c("text", "numeric", "numeric", 
                                 "text"))
View(x)

#boxplot 

boxplot(x$Height ~ x$crop)


#multiple comparison of mean
#  test no 1 tukey test 

library(agricolae)

model <- aov(Height ~ crop, data = x  )
out <-  HSD.test(model,"crop", group = TRUE, console = TRUE, main ="tukey test")
plot(out, horiz =  TRUE )


#test no 2 LSD test


model <- aov(Height ~ crop, data = x )
out <-  LSD.test(model,"crop", group = TRUE, console = TRUE, main ="LSD test")
plot(out)



#test no 3 duncan test
model <- aov(Height ~ crop, data = x )
out <-  duncan.test(model,"crop", group = TRUE, console = TRUE, main ="Duncan test")
plot(out)




#grouping

boxplot(Height ~ crop * water,  data = x, las=2 , xlab ="")
model1 <-  aov(Height ~ crop, data = x )
out1 <-  HSD.test(model1, c("crop","water"), group = TRUE, console = TRUE, main ="tukey test")
plot(out1)

levels(x$crop)
levels(x$water)
is.na(x)
na.omit(x)
jpeg(file="boxplot.tiff",width = 6,height = 4,units = "in",res = 300)
boxplot(Height ~ crop * water,  data = x, las=2 , xlab ="")
dev.off()

