#creating a data frame - method1
name=c("sam","jane","roy","jack","kane","peter","David","john","jeny","ron")
age=c(45,34,12,14,23,43,22,12,32,15)
height=c(145,165,156,176,146,159,169,167,158,153)
weight=c(56,54,76,45,65,58,50,54,64,65)
df=data.frame(name,age,height,weight)
df



#creating a data frame- method2
name=c("sam","jane","roy","jack","kane","peter","David","john","jeny","ron")
age=c(23,25,28,30,34,35,29,32,31,20)
gender=c("M","F","F","M","F","M","F","F","M","F")
maths=c(34,67,98,57,73,86,45,90,89,76)
science=c(43,76,97,34,47,65,87,98,95,23)
df=data.frame(name=c("sam","jane","roy","jack","kane","peter","David","john","jeny","ron"),
              gender=c("M","F","F","M","F","M","F","F","M","F"),
              maths=c(34,67,98,57,73,86,45,90,89,76),
              age=c(23,25,28,30,34,35,29,32,31,20),
              science=c(43,76,97,34,47,65,87,98,95,23))
df


df["name"]
df["maths"]
df["science"]
df[c("name","science")]
df$name
df$science


mean(df$maths)
median(df$maths)
table(df$gender)

# Retieve part of data frame
df$science[3]
df$maths
df$maths[2]
df$maths[2:5]


df[4,3]
df[3:5,]
df[,2:4]
df[3:7,2:4]


#changing data in the data frame
df[4,3]
df[4,3]=65
df

df[2,1]="harry"
df

#changing more than one data in data frame
df$maths[2:5]=c(65,89,76,45)
df

df["height"]=c(145,165,156,176,146,159,169,167,158,153)
df

df$weight=c(56,54,76,45,65,58,50,54,64,65)
df

#Adding a column-method1 
df["average_mark"]=(df["maths"]+df["science"])/2
df
 
mean(df$average_mark)
summary(df$average_mark)


#Adding a column-method2
df$average_mark=(df$maths+df$science)/2
df

df["average_mark"]=df["average_mark"]+5
df["average_mark"]


df["average_mark"]>=70
df["average_mark"][df["average_mark"]>=70]


df$average_mark[df$average_mark>=70]
df[df$average_mark>=70,c(1,3,4)]
df[df$average_mark>=70,]


df[df["average_mark"]>=70,]


# get the sub data frame with the final marks greater than 70 who are older than 28 years
df[(df$average_mark>70) & (df$age>28),]


# removing age column
# df$age=NULL


# ----------------------specific functions available for data frame-------------------------

View(df)
df1=edit(df)
# To get the edited data frame
df1

# Original data frame
fix(df)

head(df)
head(df,3)
tail(df)
tail(df,4)

# dimension of the data frame
dim(df)
ncol(df)
nrow(df)
colnames(df)
row.names(df)
colnames(df)=c("student","sex","maths_mark","Age","science_mark","Average")
df


rowSums(df[,-c(1,2)])
rowSums(df[,c(3,4)])
rowMeans(df[,c(3,4)])

colSums(df[,c(3,4)])
colMeans(df[,c(3,4)])


summary(df)      #give min,max,mean,median,first quatile and second quatile
str(df)          #give description about the each column
df$sex=factor(df$sex)   #set sex variable(chategorical variable) as a factor
str(df)
summary(df)




