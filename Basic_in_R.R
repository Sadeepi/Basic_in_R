#---------------------------Fundamentals--------------------------------
#R is case sensitive

#Mathhematical operations

#Addition
10+20

#Multiplication
2*5

#Division
5/3

# Integer Division
40%/%3

#Division
40/3

# Modules operator
5%%2

#Power
2^3
5**2

#Relational operators
10>2

10==9
10==10
10!=10
10<6

#Logical operators

#And operator
(10>6)&&(2>3) 
(10>6)&&(2<3) 

#OR operator
(10>6)||(2>3) 
(10>6)||(2<3) 
(10<6)||(2>3) 
 
#NOT Operator
!5>3
!5<3

!((10>8 && 11<10)&&(19<10 || 20>11))

!(10>3 && 9>2) && (21>10 || 31>9) 

#Variables


a=10
b=2
a+b
a-b
a*b
d=a**b

b>a

a==b


p<-10
100->q

#51=z         Incorrect


ls()          # Variables in the environment

rm(a)        #remove a variable
rm(b)
rm(d)
ls()

#Primrtive data type-----------------

class(10)       #Numerical
class(20.99)    #Numerical
class(2i)       #complex
class(T)         #Logical
class(2L)        #Integer
class("Cat")     #character

#Type casting

as.character(10)
p=as.character(210)
class(p)
as.character(TRUE)
as.numeric("10")
#as.numeric("cat")

as.logical(0)
as.logical(1)
as.logical(1200034484)         #All values except zero gives TRUE

as.numeric(TRUE)
as.numeric(FALSE)
as.logical("TRUE")
as.logical("True")

x=readline(prompt = "Enter your age: ")     # all the inputs are saved as characters
y=readline(prompt = "Enter your name: ")
x
y
class(x)
x+10                # x is a character. so it gives an error
x>10                # It does not give an error. Because it supports for the relational operation.
 
as.numeric(x)+90

z=readline()


#Functions------------
#sum 


x=90
y=80
z=70
sum(x,y,z)


#abs
abs(-10)

#sqrt(square root)

sqrt(64)
sqrt(25)


?sum            #to get description about sum function


#round
round(2.39)
round(3.479,digits = 1)
?round


log(100)
log(10)
log(100,base=10)


log(5)
log(5,2)
log10(100)
log2(100)


exp(100)
exp(20)
exp(1)
exp(2)
exp(3)
exp(4)


sin(5)
sin(4)
cos(6)
tan(7)

#compound data types-------------------------
#vectors
#dataframes
#lists- can store data in any type
#metrices
#Factors - This is the way of storing data in categorical format
