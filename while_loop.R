x=1
while(x<=10) { 
  print(x)
  x=x+1
}

#-------------------------------------

x=1
while(x<=10) { 
  print(x*2)
  x=x+1
}

#-------------------------------------

x=20
while(x>0){
  print(x)
  x=x-2
}

#-------------------------------------
#Infinite Loop

x=1
while(TRUE){
  print(x)
  x=x+1
}

#--------------------------------------

x=1
while(FALSE){
  print(x)
  x=x+1
}

#------------------------------------------
#get the numbers in vector "a" to a new vector until the element greater than 100

b=c()
i=1
a=c(23,15,13,49,19,15,220,536,28,10,120)
while(i<=length(a)) {
  if(a[i]>100){
    break
  }
  else{
    b=c(b,a[i])
  }
  i=i+1
}
b


#using for loop
#b=c()
#a=c(23,15,37,49,19,915,20,536,28,10,120)
#for(i in a){
#  if(i>100){
#    break
#  }
#  else{
#    b=c(b,i)
#  }
#}
#b

#-----------------------------------------
#program to get pin number as a user input(until he gives the correct pin number)  

pin="12345678"
check=TRUE 
while(check){
  entered_pin=readline(prompt="Enter your pin number: ")
  if(pin==entered_pin){
    print("You are access to ATM")
    check=FALSE
  }
  else{
    print("Incorrect pin number...")
    print("Try again")
  }
}