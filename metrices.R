a=c(2,4,3,5,8,9,1,10)

#Method 1- Creating a matrix

m1=matrix(data=a,nrow=2,ncol = 4)       # m1=matrix(a,2,4)
m1

m2=matrix(data=a,nrow = 4,ncol = 2)
m2

m3=matrix(data = a,nrow = 4,ncol=3)
m3

m4=matrix(data = a,nrow = 2,ncol = 5,byrow = TRUE)
m4

m5=matrix(10,3,4)
m5

#Method 2- Creating a matrix

array(a,c(4,2))     
array(c(2,4,3,5,8,9,1,10),c(4,2))     
 



b=matrix(c(2,3,6,7,9,4,8,1,9),3,3)
b

dim(b)            #retrieve the dimension
nrow(b)
ncol(b)
summary(b)

str(b)

e=matrix(c(2,4,6,7,8,9,"cat",10,11,18),5,2)
e

summary(e)
str(e)


a=matrix(c(2,3,4,5),2,2)
b=matrix(c(9,7,8,6),2,2)

a
b

cbind(a,b)  #column wise combine
rbind(a,b)  #row wise combine


g=c(1,3,5,7,8,9,2,4,6,11,12,13,14,15,20,15,3,4,5,6)
mat=matrix(g,4,5)
mat

mat[2,4]
mat[4,4]
mat[3,2]
mat[2,c(2,4)]
mat[c(1,4),3]
mat[c(2,4),c(2,4)]
mat[c(2,3,4),c(2,3,4)]
mat[2:4,2:4]
mat[1,]
mat[1,1:5]
mat[,3]
mat[1:4,3]


mat>=5
a=c(2,4,3,5,8,9,1,10)

#Method 1- Creating a matrix

m1=matrix(data=a,nrow=2,ncol = 4)       # m1=matrix(a,2,4)
m1

m2=matrix(data=a,nrow = 4,ncol = 2)
m2

m3=matrix(data = a,nrow = 4,ncol=3)
m3

m4=matrix(data = a,nrow = 2,ncol = 5,byrow = TRUE)
m4

m5=matrix(10,3,4)
m5

#Method 2- Creating a matrix

array(a,c(4,2))     
array(c(2,4,3,5,8,9,1,10),c(4,2))     




b=matrix(c(2,3,6,7,9,4,8,1,9),3,3)
b

dim(b)            #retrieve the dimension
nrow(b)
ncol(b)
summary(b)

str(b)

e=matrix(c(2,4,6,7,8,9,"cat",10,11,18),5,2)
e

summary(e)
str(e)


a=matrix(c(2,3,4,5),2,2)
b=matrix(c(9,7,8,6),2,2)

a
b

cbind(a,b)  #column wise combine
rbind(a,b)  #row wise combine


g=c(1,3,5,7,8,9,2,4,6,11,12,13,14,15,20,15,3,4,5,6)
mat=matrix(g,4,5)
mat

mat[2,4]
mat[4,4]
mat[3,2]
mat[2,c(2,4)]
mat[c(1,4),3]
mat[c(2,4),c(2,4)]
mat[c(2,3,4),c(2,3,4)]
mat[2:4,2:4]
mat[1,]
mat[1,1:5]
mat[,3]
mat[1:4,3]


mat>=5
a=c(2,4,3,5,8,9,1,10)

#Method 1- Creating a matrix

m1=matrix(data=a,nrow=2,ncol = 4)       # m1=matrix(a,2,4)
m1

m2=matrix(data=a,nrow = 4,ncol = 2)
m2

m3=matrix(data = a,nrow = 4,ncol=3)
m3

m4=matrix(data = a,nrow = 2,ncol = 5,byrow = TRUE)
m4

m5=matrix(10,3,4)
m5

#Method 2- Creating a matrix

array(a,c(4,2))     
array(c(2,4,3,5,8,9,1,10),c(4,2))     




b=matrix(c(2,3,6,7,9,4,8,1,9),3,3)
b

dim(b)            #retrieve the dimension
nrow(b)
ncol(b)
summary(b)

str(b)

e=matrix(c(2,4,6,7,8,9,"cat",10,11,18),5,2)
e

summary(e)
str(e)


a=matrix(c(2,3,4,5),2,2)
b=matrix(c(9,7,8,6),2,2)

a
b

cbind(a,b)  #column wise combine
rbind(a,b)  #row wise combine

#sclicing

g=c(1,3,5,7,8,9,2,4,6,11,12,13,14,15,20,15,3,4,5,6)
mat=matrix(g,4,5)
mat

mat[2,4]
mat[4,4]
mat[3,2]
mat[2,c(2,4)]
mat[c(1,4),3]
mat[c(2,4),c(2,4)]
mat[c(2,3,4),c(2,3,4)]
mat[2:4,2:4]
mat[1,]
mat[1,1:5]
mat[,3]
mat[1:4,3]


mat>=5
mat[mat>=5]


m1=matrix(c(2,3,4,5,6,4,7,8,3),3,3)
m1

m2=matrix(c(1,5,6,4,7,3,8,2,7),3,3)
m2

m1+m2
m1-m2
m1 *m2
m1%*%m2

m=matrix(c(2,3,4,5,6,4,7,8,3),3,3)
m
t(m)           #Transpose of matrix
det(m)         #Determinant
solve(m)       #Inverse of the matrix
diag(m)        #diagonals
sum(diag(m))   #Trace
 