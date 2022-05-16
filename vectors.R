#vectors

v=c(2,4,5,7,3,8,9,1,0)
v
class(v)


d=c("cat","dog","horse","lion")
d
class(d)


t=c(T,F,T,T,T,T,F,T,F)
t
class(t)


g=c(12,34,5,67,"dog","cat")    
g
class(g)        #All are convert to character type 

#cannot keep different data types together in a single vector
#It will cast every thing to most suitable data type

#logical<integer<numeric<complex<character


h=c(12,9,2,T,F,T)
h
class(h)


x=c(T,F,T,T,"cat")
x
class(x)


k=c(12,5,9,7,3,T,F,F,T,"dog","cat")
k
k[4]
k[2]
k[c(2,5,7)]
k[1:5]     #slicing  


class(k)


a=c(1:100)
a
b=1:10
b

35:20


seq(from=1,to=30,by=3)
seq(1,20,2)
seq(20,200,50)
seq(100,20,-5)


a=c(34,67,46,89,45,90,85,35,23,57,76)
a[-5]
a[-c(2,4,5)]


a=c(34,67,46,89,45,90,85,35,23,57)
a[c(T,T,F,T,F,T,F,F,F,T)]           #Boolean masking
a[c(T,T,F,F,F)]                     #Recursive property
a[c(T,F)]


b=c(2,4,5,3,6,8)
d=c(9,8,7,6,5,4)
b+10
b-1
b*2
b/10
b**2
b**d
b>=5             # Gives a logical vector
b>=5 & b>d
b>=5 | b>d


b+d
b-d
b*d
b/d

b[b>=4]


j=c(2,1,4,6,3,6)
k=c(9,3,5)
j+k                      #recursive property happens here


k=c(9,3,5)
m=c(3,4,5,6,7,8,9,2)
k+m



#Functions_can_work_with_vectors------------------



m=c(3,4,5,6,7,8,9,2)
length(m)
min(m)
max(m)
sum(m)
mean(m)
median(m)
var(m)
sd(m)          #standard deviation
range(m)
  

cumsum(m)       #Cumulative sum
cumprod(m)      #Cumulative product
cummin(m)       #Cumulative min
cummax(m)       ##Cumulative max


#appending a number to a vector --- method1
m=c(3,4,5,6,7,8,9,2)
append(m,89)
b=append(m,20,after=3)  #append 20 after length=3
b
m             # original vector does not change


g=append(m,c(11,12,14),after=3)        #  g=append(m,c(11,12,14),3) 
g


#appending a number to a vector --- method2
q=c(3,4,5,6,7,8,9,2)
n=c(q,20)
n


w=c(22,15,10,32,9,14,20,7)
w
sort(w)            #ascending order
sort(w,decreasing = T)
sort.default(w)


order(w)                    # indexes of the original vector 
order(w,decreasing = T)  
w[order(w)]
w[order(w,decreasing = T)]


w[c(2,5,8,4,6,7,1,3)]       # Result is numbers matching to indexes
w[c(2,4,6)]


w=c(22,15,10,32,9,14,20,7) 
rev(w)


t=c(3,4,5,3,3,5,7,5,9,4,3,3,8,7,8,8)
unique(t)
table(t)


g=c("cat","cat","dog","cat")
unique(g)
table(g)

h=c(10,20,30,40,50,60,70,80,90,100)
sample(h,5)                          #sample with five elements

sample(h,3,replace = T)             # Bootstrapped samples
 
set.seed(1234)
sample(h,5,replace=T)
sample(h,23,replace=T)


a=c(10,20,30)
rep(a,5)


b=c(T,T,T,F,T,F,F,T,T,T)
e=c(T,T,T,T,T,T,T,T)
f=c(F,F,F,F)


any(b)
any(e)
any(f)


all(b)
all(e)
all(f)


a=c(10,20,30)
any(a>20)
all(a>20)


y=c(T,T,F,T,F,T)
a=c(10,20,30,40,45,60)


which(y)               #Gives indexes
which(a>20)            #Gives indexes
a[which(a>20)]

which.max(a)           #Gives indexes
which.min(a)           #Gives indexes



#Membership test
a=c(2,3,4,7)
b=c(7,4,9,3)
a%in%b
3%in%b
8%in%a


b=c(7,4,9,3)
b[c(2,1)]
b


b%in%c(7,3)
ind=which(b%in%c(7,3))
ind
b[ind]
b[-ind]             #remove the values matching to these indexes



# Mutability of vectors
a=c(11,13,14,15,17,18)
a[3]
a[3]=22
a

a[c(4,5)]=c(19,20)
a


a=c(11,13,14,15,17,18)

b=c("Cat","Dog","Cow")
replace(b,c(1,3),"Man")


d=c(10,20,30,40,50,60,70,80)
d[c(2,4,6)]=c(25,45,65)
d


g=c(3,2,4,6,5,7,9,1,8)
summary(g)         #min,max,first quatile,mean,third quatile,median

str(g)             #Gives a description
