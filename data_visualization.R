install.packages("ggplot2")
library(ggplot2)
library(readxl)
x <- read_excel("ggdata.xlsx", sheet = "gg1", 
                     col_types = c("text", "numeric", "text", 
                                   "text"))
View(x)
 

ggplot( data = x , mapping = aes(x=crop, y = height))+ geom_point()

ggplot(x, aes(crop,height)) + geom_point(size=3)

ggplot( data = x , mapping = aes(x=crop, y = height))+ geom_point()

ggplot(x, aes(crop,height)) + geom_boxplot() +geom_point(colour="red" ,
                                                         alpha=0.8)


ggplot(x, aes(crop,height, fill = water)) + 
  geom_boxplot()+
  facet_wrap(~fert.type)+ 
  labs(x ="croptype", y = "plant height ",
       title = "plant Growth")+
  theme_bw()
ggsave("ggplot.tiff", units = "in" , width = 8, height = 6, dpi = 300, compression = 'lzw')
  




ggplot(x, aes(crop,height, fill = water)) + 
  geom_boxplot()+
  facet_wrap(~fert.type)+ 
  labs(x ="croptype", y = "plant height ",
       title = "plant Growth")+
  theme_bw()+
  coord_flip()+
ggsave("ggplot.tiff", units = "in" , width = 8, height = 6, dpi = 300, compression = 'lzw')




