mydata <- read.csv(file.choose())


ggplot(data=mydata, aes(x=carat, y=price)) + 
  geom_point()