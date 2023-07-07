#scatter in r

library(ggplot2)
data(cars)
ggplot( cars, aes(x = speed , y = dist)) +geom_point()+
  geom_smooth(method = "lm", se = T,level = 0.9)

#scatter in r with multiple lines
data("Orange")
ggplot(Orange, aes(x= age, y= circumference,color=Tree))+
  geom_point(size=4,shape =17)

#sperate by shape

data("Orange")
ggplot(Orange, aes(x= age, y= circumference,color=Tree))+
  geom_point(size=4,shape=19)+
  geom_line(aes(linetype=Tree),size =1)+
  labs(x = "Age", y = "circumfereence" , title = "Graph")+
  ggsave("scatterplo t.pdf")

#bubble plot
install.packages("viridis")
library(viridis)
data ("quakes")
nrow(quakes)

q_sample <- quakes[seq(from =1 , to = 1000, by =10),]
nrow(q_sample)


ggplot(data =q_sample,aes(x = lat , y=long))+
  geom_point(aes(size=mag, color = mag))+
  guides(size=F)+
  scale_colour_viridis_b(option = "B")+
  scale_size_continuous(range = c(1,9))+
  labs(x = "lat", y = "long" , title = "Graph")


#jitter plot
data("diamonds")
nrow(diamonds)

d_sample <- diamonds[seq(from =1 , to = 49000, by =10),]
nrow(d_sample)

#ggplot(d_sample, aes(cut,price))+geom_jitter()
# Assuming the 'price' variable is present in the 'd_sample' dataset
ggplot(d_sample, aes(cut, price, color = cut)) + geom_jitter()
ggplot(d_sample, aes(cut, price)) + geom_point()

  