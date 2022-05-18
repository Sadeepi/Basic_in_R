# Any categorical data represented in R as factors
# categorical data can be divided into two parts as nominal and ordinal 
# Nominal data has no order
#TO create a factor,use the factor() function and add a vector as argument

d=c("Male","Female","Female","Male","Female")
g=factor(d)
g
length(g)
levels(g)          #To only print the levels use the levels() function
g[3]               #Access item in a factor

g[4]="Female"      #change the value of fourth item
g[4]

g[2]="F"           #Cannot change the item that does not exist
g[2]
g=factor(d,levels=c("Male","Female","F"))



e=c(1,2,2,1,2)
factor(e)
str(e)
summary(e)


h=c("M","M","F","M")
factor(h)


uyear=c("First","Third","First","Second","Fourth","Third")
table(uyear)
factor(uyear,levels = c("First","Second","Third","Fourth"),labels = c(1,2,3,4))
