setwd("E:\\Education\\R files\\R codes")
read.csv("iris.CSV")                       # To import .csv file

#-------------------------------------- 
read.table("Data01.TXT")                            # To import text file
df1=read.table("Data01.TXT",sep =",")   
colnames(df1)
df=read.table("Data01.TXT",sep =",",header =TRUE)   # To make the first row as a header
colnames(df)                                        # To get the column names
df
summary(df)

df=read.table("Data02.TXT",sep =",",col.names =c("Name","Age","Gender"))   #Add column names
df

df1=read.table("Data02.TXT",sep =",")
colnames(df1)=c("Name","Age","Gender")            # Another way of add columns
df1

#install.packages("readxl") 
library(readxl)
df=read_xlsx("iris.XLSX")                # To import .XLSX file
head(df)

df1=data.frame(df)                       # convert to a data frame
head(df1)
df1$Sepal.Length
df1$Petal.Length

read_excel("iris.XLSX")


#-----------------------------------------------

data=read.csv("iris.CSV")
data
head(data)
tail(data)
head(data,3)
str(data)

dim(data)
nrow(data)
ncol(data)
colnames(data)
names(data)
row.names(data)
as.numeric(row.names(data))

colnames(data)=c("SL","SW","PL","PW","Spec")
head(data)

# changing the order of the column names
# colnames(data)=c("Spec","PL","PW","SL","SW")
# data

data[,c(5,3,4,1,2)]

# ---------------------------------------

data["SL"]
data[c("SL","PW")]
data[2,5]
data[4:7,2:4]

# To remove the Spec column
data$Species=NULL
data
data$MeanL=(data$Sepal.Length+data$Petal.Length)/2
data["MeanL"]
data$MeanW =(data$Sepal.Width+data$Petal.Length)/2
data["MeanW"]
ML=mean(data$MeanL)
ML

MW=mean(data$MeanW)
MW

data$Llevel=ifelse(data$MeanL>ML,"High","Low")
data

data$Wlevel=ifelse(data$MeanW>MW,"High","Low")
data

head(data)

#---------------------------------------------

data$Wlevel=NULL
data$Llevel=NULL

apply(data, 1, mean)        # Mean of each row
apply(data, 2, mean)        # Mean of each column
apply(data, 2, function(x) mean(x)/median(x))

#---------------------------------------------

data=read.csv("iris.CSV")   
data
data[data$Species=="virginica",]
data[data$Sepal.Length>5,]
data[(data$Sepal.Length>5) & (data$Petal.Length)>6,]

col_vec=c("setosa","virginica")
data[data$Species==col_vec,]
data[data$Species=="setosa" | data$Species=="virginica",]
data[data$Species%in%col_vec,]

#---------------------------------------------------------------

setwd("E:\\Education\\R files\\R codes")
data=read.csv("iris.csv")
data
colnames(data)=c("SL","SW","PL","PW","SP")
data

data$SP=factor(data$SP)
summary(data)
rowSums(data[,-5])        # row sum except the 5th column
colSums(data[,-5])        # column sum except the 5th column
rowMeans(data[,-5])       # row mean except the 5th column
colMeans(data[,-5])       # column mean except the 5th column

apply(data[,-5], 2,mean)  # Mean in each column
apply(data[,-5], 2,var)   # variance in each column
apply(data[,-5], 2,median)

mean(data$SL)
range(data$SL)
quantile(data$SL)    # five number summary
summary(data$SL)     # five number summary

#-------------------------------------
df=data.frame(A=c(20,10,90),B=c(34,21,43))
df
df[c(2,3,1),]

# sorting------------------------

data=read.csv("iris.csv")
data
colnames(data)=c("SL","SW","PL","PW","SP")

# sort SL column into ascending order 
data_order_SL=data[order(data$SL),]
data_order_SL
head(data_order_SL)

# sort SL column into descending order 
data_order_SL_desc=data[order(-data$SL),]
data_order_SL_desc
head(data_order_SL_desc)


# row names are changing to ascending order
row.names(data_order_SL)=1:nrow(data_order_SL)     
head(data_order_SL)

#------------------------------

data_order_sl2=data[order(data$SL,data$PL),]   # priority is given to SL column.Then for PL.
head(data_order_sl2)
data_order_sl2

#-----------------------------------------------
unique(data$SP)
table(data$SP)
unique(data$SP)[1]
unique(data$SP)[2]
unique(data$SP)[3]

data[data$SP==unique(data$SP)[1],-5]

# grouping
spec_groups=list(data[data$SP==unique(data$SP)[1],-5],data[data$SP==unique(data$SP)[2],-5],data[data$SP==unique(data$SP)[3],-5])
names(spec_groups)=c("setosa","versicolor","virginica" )
spec_groups$setosa
spec_groups$versicolor
spec_groups$virginica


# combining data frames
df1=read.csv("iris - Col1.CSV")
df2=read.csv("iris - Col2.CSV")

head(df1)
head(df2)

dfm1=merge(df1,df2,by="Id")
head(dfm1)

#-------------------------------------------------
# combining data frames

df3=read.csv("iris - Col3.CSV")
head(df3)

head(df1)

dfm2=merge(df1,df3,by=c("Id","Species"))
head(dfm2)

#-------------------------------------------------
# combining data frames

df4=read.csv("iris - Col4.CSV")
head(df4)

head(df1)

cbind(df1,df4)
#-------------------------------------------------

df5=read.csv("iris - Row1.CSV")
df6=read.csv("iris - Row2.CSV")
df5
df6

rbind(df5,df6)


#-------------------------------------------------
# getting samples in data frames

df=data.frame(A=c(20,50,10),B=c(100,200,400))
df
sample(1:nrow(df),2)

df[sample(1:nrow(df),2),]


#-------------------------------------------------
# getting samples in data frames


setwd("E:\\Education\\R files\\R codes")
data=read.csv("iris.CSV") 
colnames(data)=c("SL","SW","PL","PW","'spec")
head(data)



index=1:nrow(data)
set.seed(1234)
id_sample=sample(index,20)        # sample of indexes
id_sample1=sample(index,round(nrow(data)*0.6))
data[id_sample1,]
data[id_sample,]                  # sample of data

nrow(data)*0.3






















