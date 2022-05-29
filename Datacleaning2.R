setwd("E:\\Education\\R files\\R codes")
dir()

data=read.csv("iris - Missing.csv")

install.packages("tidyr")
library(tidyr)

head(data)
summary(data)
data$Species[data$Species==""]=NA
head(data)
data$Species=factor(data$Species)
data$Petal.Width=NULL

data1=drop_na(data)       #using drop_na function, can remove all the rows with missing values
summary(data1)
nrow(data1)
nrow(data)

data1=fill(data,"Sepal.Length",.direction = "down")        # forward filling
head(data1)

data2=fill(data,"Sepal.Width",.direction = "up")
head(data2)


data3=fill(data,"Sepal.Length","Petal.Length",.direction = "up")    # backward filling
head(data3)


data4=fill(data,"Sepal.Length",.direction = "updown")
head(data4)


data5=fill(data,"Sepal.Length",.direction = "downup")
head(data5)


data1=replace_na(data,list(Sepal.Length=0))
head(data1)

data2=replace_na(data,list(Sepal.Length=0,Sepal.Width=0))
head(data2)

data3=replace_na(data,list(Sepal.Length=mean(data$Sepal.Length,na.rm = TRUE)))
head(data3)



