library(ggplot2)
#data
#Mapping(xaxis,yaxis)
#geometry(scatter,line, bar, box)
d <- read.csv('data.csv')
View(d)
names(d)

product <- d$Product
Sales <- d$Sales
ggplot(data = d,aes(x = "product", y = "Sales"))
+ geom_point()


