setwd("E:\\Education\\R files\\R codes")
dir()
data=read.csv("iris - Missing.csv")
head(data,15)
summary(data)
data$Species
data$Species[data$Species==""]=NA
head(data)
data$Species
data$Species=factor(data$Species)
summary(data)

data$Sepal.Length[is.na(data$Sepal.Length)]

data$Sepal.Length
is.na(data$Sepal.Length)
sum(is.na(data$Sepal.Length))
as.numeric(is.na(data$Sepal.Length))
length(data$Sepal.Length)

# proportion of missing values
sum(is.na(data$Sepal.Length))/length(data$Sepal.Length) 


sum(is.na(data$Sepal.Length))/length(data$Sepal.Length)*100

# percentage of each column
fun=function(x) sum(is.na(x))/length(x)*100
apply(data,2,fun)

#apply(data,2,function(x) sum(is.na(x))/length(x)*100)

data$Petal.Width=NULL
head(data,10)
summary(data)

#--------------------------------------------------------

a=c(23,45,7,5,89,10,20,32,35,NA,43,21,NA)
sum(a,na.rm = T)
mean(a,na.rm = TRUE)

#---------------------------------------------------------
head(data)
data$Sepal.Length[is.na(data$Sepal.Length)]=0
head(data)

data$Species[is.na(data$Species)]="Unknown"      # Unknown is not a factor. So give an error
head(data,15)
data$Species=factor(data$Species,levels=c("setosa","versicolor","virginica","Unknown"))
levels(data$Species)

data$Species[is.na(data$Species)]="Unknown"
head(data,15)
summary(data)

which.max(table(data$Species))
names(which.max(table(data$Species)))
 
data$Species[is.na(data$Species)]=names(which.max(table(data$Species)))
head(data,15)

data$Sepal.Width[is.na(data$Sepal.Width)]=mean(data$Sepal.Width,na.rm = T)
head(data)

data1=data[!is.na(data$Sepal.Length),] 
data1


summary(data)
  
complete.cases(data)           # If a row has at least one missing value it gives True. Otherwise False
data2=data[complete.cases(data),]
data2
summary(data2)

