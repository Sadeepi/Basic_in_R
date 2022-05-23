# functions are repeated block of codes in several places in a program

fun_bday=function(name){
  print("Happy Birthday To You")
  print("Happy Birthday To You")
  print(paste("Happy Birthday Dear",name))
  print("Happy Birthday To You")
}

fun_bday("sam")
fun_bday("kane")
fun_bday("jane")

#------------------------------------------------

fun1=function(){
  print("Have a nice day")
}

fun1()
fun1()
fun1()

#------------------------------------------------

fun2=function(a,b){
  print(a+b)
}
fun2(200,300)
fun2(50,100)
fun2(250,100)

#------------------------------------------------

fun3=function(b){
  if(b%%2==1){
    return("Odd")
  }else{
    return("Even")
  }
}
fun3(10)

#------------------------------------------------

#fun4=function(a,b){
#  return(a+b)
#}

#fun5=function(p,q,r){
#  return((p+q)*r)
#}
#fun4(2,3)
#fun5(2,3,4)

fun4=function(a,b){
  return(a+b)
}

fun5=function(a,b,r){
  return(fun4(a,b)*r)       #function inside a function
}

fun4(2,3)
fun5(5,3,2)

#------------------------------------------------

fun4=function(a,b){
  return(a+b)
}


fun5=function(p){
  return(2*p)
}

fun4(fun5(3),fun5(4)) 

#------------------------------------------------

fun1=function(a){
  return(sum(a))
}
fun1(c(2,3,4,6,8))
fun1(c(20,30,40,60,80))

#------------------------------------------------
#simple function to give values in vector a only(not include in b vector)

#i=1
#fun1=function(a,b){
#  while(i<=length(a)){
#    d=a[!a%in%b]
#    return(d)
#    i=i+1
#    }
#  }

#fun1(c(1,3,4,6,2),c(1,3,4,6))

fun1=function(a,b){
  return(a[!a%in%b])
}
fun1(c(2,3,4,5),c(2,3,4,7,90))


#------------------------------------------------

fun1=function(a){
  return(sum(1:a))
}
fun1(4)
fun1(-1)           #give the output as summation of 1,0,-1

#------------------------------------------------
#recursive function
fun1=function(a){
  if(a>=1){
    if(a==1){
      return(1)
    }
    else{
      return(a+fun1(a-1))
    }
  }
}
fun1(5)

#------------------------------------------------
#Factorial value of a number

fun1=function(n){
  if(n>=0){
    if(n==1 || n==0){
      return(1)
    }else{
      return(n*fun1(n-1))
    }
  }
}
fun1(5)

#------------------------------------------------


#-------------------------------------

x=10                    #variables outside the function-global variables
fun1=function(){
  x=20                  #variables defining inside the function- local variables
  return(x)
}
print(x)

fun1()
x
#---------------------------------------

x=10
fun=function(){
  assign("x",20,envir=.GlobalEnv)       #assign 20 to x at the global environment
  print(x) 
}

x                                    #x=10
fun()                                #x=20
x                                    #x=20

#---------------------------------------

fun_new=function(x) 2*x       # Anonymous functions
fun_new(5)

(function(x) 2*x)(15)
(function(x,y,z) (x+y)*z)(12,3,4)

#---------------------------------------

fun=function(x){
  return(10*x)
}

a=c(1,2,3,5,7,8)
sapply(a, fun)

#---------------------------------------

fun=function(a){
  if(a>50){
    return("pass")
  }else{
    return("fail")
  }
}

marks=c(20,90,78,43,65,12,80,28,35)
sapply(marks,fun)           # give as a vector
lapply(marks,fun)           # give as a list
unlist(lapply(marks,fun))

#---------------------------------------

df=data.frame(EMarks=c(34,78,56,43,90,29),Mmarks=c(32,98,75,48,39,54))
df
apply(df,1,sum)
apply(df,2,sum)

apply(df,1,median)
apply(df,2,median)

apply(df,1,summary)
apply(df,2,summary)

#---------------------------------------

fun=function(x) return(ifelse(length(x)==0,0,x[1]))
fun(c(20,94,5,67,23,9,16))

apply(df,1,fun)   # gives first value in each row
apply(df,2,fun)   # gives first value in each column
#apply(df,1,function(x) ifelse(length(x)==0,0,x[1]))      #by substituting to the "fun"
#apply(df,2,function(x) ifelse(length(x)==0,0,x[1]))      #by substituting to the "fun"

apply(df,2,function(x) mean(x)/sd(x))
#---------------------------------------
#for metrices and data frames can work with apply function

m=matrix(c(12,4,34,7,9,5,6,10,12,15),5,2)
apply(m,1,sum)
apply(m,2,sum)