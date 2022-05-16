#method1
df1=read.csv("E:\\Education\\R_Samadhi_sir\\working_directory\\exercise1.csv")
df1

#method2
df2=read.csv("E:/Education/R_Samadhi_sir/exercise1.csv")
df2

#method3
setwd("E:\\Education\\R_Samadhi_sir\\working_directory")
df3=read.csv("exercise1.csv")
df3

dir()      #To know what are the files in the environment(working directory)
  
df1$Weight
df1$Weight+df1$Height

head(df1)
tail(df1)
dim(df1)          #give number of rows and columns
colnames(df1)
row.names(df1)
str(df1)          #description about the data frame
summary(df1)


df1$Weight[df1$Weight>=45]
sum(df1$Weight)
mean(df1$Height)
df1[c("Weight","Height")]

# Adding new column to data frame
df1["Average"]=(df1["Weight"]+df1["Height"])/2
df1

df1$Gender=c("Male","Female","Male","Male","Female","Male","Female","Male","Male")
df1

df1$Gender=factor(c("Male","Female","Male","Male","Female","Male","Female","Male","Male"))
df1

str(df1)
summary(df1)


# Adding working experience column
df1["working_experience"]=c(12,14,15,16,11,17,19,13,10)
df1

# Adding credit score column
df1["credit_score"]=c(89,87,85,78,70,83,81,84,89)
df1


# split the data frame to df_male and df_female
df_male=df1[df1$Gender=="Male",]
df_female=df1[df1$Gender=="Female",]
df_male
df_female


# Adding CE ratio Column
df_female["CE ratio"]=df_female["credit_score"]/df_female["working_experience"]
df_female


df_male$Experience_level


# set all values in experience level to "high" having more than 15 working experience
#method1

df_male$Experience_level="Low"    # set all values in experience level to "low"
df_male[df_male$working_experience>15,]$Experience_level="High"
df_male

#method2
df_male$Experience_level=ifelse(df_male$working_experience>15,"High","Low")
df_male
