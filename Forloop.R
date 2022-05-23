a=c(2,4,3,5,9)
for(i in a){
  print(i)
}

#----------------------------------------------

for(i in a){
  print(2*i)
}

#----------------------------------------------

b=c(2,4,3,6,8,9,5)
for (i in b) {
  if(i%%2==0){
    print("Even")
  }
  else{
    print("odd")
  }
}

#----------------------------------------------
#Multiply all values in vector by 10

d=c()                   # Empty vector
a=c(2,3,6,8,1)
for(i in a){
  d=append(d,i*10)
}
d

#----------------------------------------------

#Multiply all even values in vector by 10 

d=c()                   # Empty vector
a=c(2,3,6,8,1,12,5,60,80)
for(i in a){
  if(i%%2==0){
    d=append(d,i*10)
  }
  else{
    d=append(d,i)
  }
}
d

#----------------------------------------------

marks=c(56,23,45,77,56,44,66,78,35,90)
results=c()
grades=c()
for(i in marks){
  if(i>50){
    results=append(results,"Pass")
  }
  else{
    results=append(results,"Fail")
  }
}

for(j in marks){
  grades=append(grades,ifelse(j>=80,"A",ifelse(j>=65,"B",ifelse(j>=50,"C","F"))))
}
results
grades


#----------------------------------------------

# break  
a=c(2,4,1,3,6,5,7,8,9,3,4,6,8,9,7,5)
for(i in a){
  if(i%%2!=0){
    break
  }
  print(i)
}

#----------------------------------------------

# next

a=c(2,4,1,3,6,5,7,8,9,3,4,6,8,9,7,5)
for(i in a){
  if(i%%2!=0){
    next
  }
  print(i)
}


#Give all odd elements to vector b in the vector a

a=c(1,2,4,5,3,6,8,9,7,10,11,12,13,14)
b=c()
for(i in a){
  if(i%%2==0){
    next
  }
  else{
    b=c(b,i)
  }
}

b

#----------------------------------------------
#give elements in the even indexes to a new vector

a=c(1,2,4,5,3,6,8,9,7,10,11,12,13,14)
b=c()

for(i in 1:length(a)){
  if(i%%2==0){
    b=c(b,a[i])
  }
}
b

#------------------------------------------------
#Get elements which are in a and not in b to a new vector

a=c(23,34,56,75,89,48,90,38,52,95)
b=c(23,56,75,38,95)
d=c()

for(i in a){
  if(!i%in%b){
    d=c(d,i)
  }
}
d

#------------------------------------------------
# get elements in a vector as a single line using a for loop

a=c(22,41,56,78,10)
for(i in a){
  cat(i," ")
}
