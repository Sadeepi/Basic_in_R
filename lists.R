a=10
b="cat"
g=TRUE 
h=c(2,3,4,1,5,8,7)
m=matrix(c(3,4,2,6),2,2)

items=list(a,b,g,h,m)
# or you can use 
# items_2=list(10,"cat",TRUE,c(2,3,4,1,5,8,7),matrix(c(3,4,2,6),2,2))
# items_2

items

items[[1]]
items[[2]]
items[[3]]
items[[4]][2]
items[[4]][5]
h[4]
sum(items[[4]])


class(items[[1]])
class(items[[2]])
class(items[[3]])
class(items[[4]])
class(items[[5]])


names(items)
names(items)=c("Item1","Item2","Item3","Item4","Item5")
names(items)

items


items$Item3
items$Item5

items$Item6

#Add an item to a list
items$Item6=c("cat","dog","tiger","lion")

items

# removing item from the list

items$Item2=NULL
items

unlist(items)

items[2:5]

items1=list(a,b,g)
items1

items2=list(h,m)
items2

items_new=c(items1,items2)
items_new