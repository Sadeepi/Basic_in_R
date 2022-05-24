# It will start the operation directly
# If the condition is satisfied, then stop the loop
# If the condition false continue the loop

#---------------------------------------------------

#Infinite loop
x=0
repeat{
  print(x)
  x=x+10
}

#---------------------------------------------------

x=0
repeat{
  if(x==100){
    break
  }
  print(x)
  x=x+10
}

#---------------------------------------------------

pin="12345678"
repeat{
  entered_pin=readline(prompt="Enter your pin number: ")
  if(pin==entered_pin){
    print("Access to the ATM")
    break
  }
  else{
    print("Try again")
  }
}
