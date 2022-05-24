x=14

if (x>6){
  print("success!!!")  
}

#----------------------------------------------


y=5

if(!y<4){
  print("Success!!!")
}

#----------------------------------------------


if(TRUE){
  print("Success!!!")
}


#----------------------------------------------

if (FALSE){
  print("Success!!!")
}


#----------------------------------------------

x=2

if(x>0 && x<=5){
  print("Success")
}

x=9

if(x>0 || x<2){
  print("success!!!")
}

#----------------------------------------------

x=45
if (x>=35){
  print("pass")
}else{
  print("Fail")
}

#----------------------------------------------

n=11
if (n%%2==0){
  print("Even number")
}else{
  print("Odd number")
}

#----------------------------------------------

result=ifelse(n%%2==0,"Even number","Odd number")
result

#----------------------------------------------

mark=13

if (mark>=80){
  print("A")
}else if(mark>=65){
  print("B")
}else if(mark>=50){
  print("C")
}else{
  print("F")
}

#----------------------------------------------

#Method1
weight=readline(prompt = "Enter your weight in kilograms: ")
height=readline(prompt = "Enter your height in meters: ")

BMI=as.numeric(weight)/(as.numeric(height)**2)
BMI

if(BMI>=30){
  status="obese range"
}else if(BMI>=25){
  status="overweight"
}else if(BMI>=18.5){
  status="Healthy weight range"
}else{
  status="underweight"
}

status

#----------------------------------------------


#Method2
BMI=45
status_new=ifelse(BMI>=30,"obese",ifelse(BMI>=25,"overweight",ifelse(BMI>=18.5,"Healthy ","underweight")))
status_new

#----------------------------------------------

name=c("sam","jane","roy","jack","kane","peter","David","john","jeny","ron")
age=c(45,34,12,14,23,43,22,12,32,15)
height=c(1.45,1.65,1.56,1.76,1.46,1.59,1.69,1.67,1.58,1.53)
weight=c(56,54,76,45,65,58,50,54,64,65)
df=data.frame(name,age,height,weight)
df

df$BMI=df$weight/(df$height**2)
df

df$status=ifelse(df$BMI>=30,"obese",ifelse(df$BMI>=25,"overweight",ifelse(df$BMI>=18.5,"Healthy","underweight")))
df

#----------------------------------------------
