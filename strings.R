msg="Today is a beautiful day."
nchar(msg)
length(msg)
substr(msg,1,5)
substr(msg,1,6)
substr(msg,7,10)
substr(msg,10,10)

msgs=c("Today is a rainy day","Today is a bad day","Today is a good day")
nchar(msgs)
length(msgs)
substr(msgs,9,15)        # give characters 9:15 in all elements
substr(msgs[2],12,19)    # give characters 12:19 in element two

class("")
nchar("")
nchar(" ")
nchar("   ")

toupper(msg)
toupper(msgs)
tolower(msg)
tolower(msgs)

#----------------------------------------------
#concatenating two sentences.

st1="Dog is running"
st2="Cat is sleeping"
paste(st1,st2)              # By default there is a space
paste(st1,st2,sep = ",")

cat(st1,st2)
cat(st1,st2,sep="/")

a=paste(st1,st2,sep="/")
a
b=cat(st1,st2,sep="/")
b

name="sadeepi"
age=25
msg1=paste("My name is",name,"and I am",age,"years old")
msg1

cat("My name is",name,"and I am",age,"years old")

msg_new=sprintf("My name is %s and I am %d years old",name,age)
msg_new

#----------------------------------------------

marks=readline(prompt="Enter your mark: ")

result1="Passed"
result2="Failed"
grade1="A"
grade2="B"
grade3="C"
grade4="F"


if(marks>50){
  if(marks>80){
    sprintf("You have %s the exam and your grade is %s",result1,grade1)
  }
  else if(marks>65){
    sprintf("You have %s the exam and your grade is %s",result1,grade2)
  }
  else if(marks>50){
    sprintf("You have %s the exam and your grade is %s",result1,grade3)
  }
}else{
  sprintf("You have %s the exam and your grade is %s",result2,grade4)
}


#----------------------------------------------

marks=readline(prompt="Enter your mark: ")

result=ifelse(marks>50,"pass","Fail")
grade=ifelse(marks>80,"A",ifelse(marks>65,"B",ifelse(marks>55,"C","F")))

sprintf("You have %s the exam and your grade is %s",result,grade)

#----------------------------------------------

msg="cat is sleeping,Dog is running,cow is eating"
a=strsplit(msg,",")[[1]]               # single element is a vector. strsplit function gives a list.(list with a single vector)
a[1]                                   # First element of the list
a[2]                                   # second element of the list
a[3]                                   # third element of the list

b=strsplit(msg," ")    # split happens from the spaces
b

d=strsplit(msg,"o")    # split happens from "o"
d

#----------------------------------------------

s1="Dog is running"
s2=c("Dog","Cat","Dog is running","dog is eating","dog","Dog is fighting","Cat is running","Dog")
grep("Dog",s1)                       # give indexes of s1 having dog word
grep("dog",s2)                       
grep("Dog",s2,ignore.case = TRUE)    # give indexes of s2 having dog or Dog word.It ignore the case sensitivity

grep("Dog",s2,ignore.case = TRUE,invert=TRUE)    # give the indexes of s2 which does not including "Dog"

grepl("Dog",s1) 
grepl("Dog",s2)

#----------------------------------------------

s1="Today is a beautiful day"
s2=c("Dog","Cat","Dog is running","dog is eating","dog","Dog is fighting","Cat is running","Dog")
s3=c("Dog","Cat","Dog is running","dog is eating","dog","Dog is fighting with cat because dog is angry","Cat is running","Dog")

sub("Today is","Yesterday was",s1)
sub("beautiful","good",s1)
sub("Dog","Cow",s2)
sub("Dog","Cow",s2,ignore.case = TRUE)
sub("Dog","Cow",s3,ignore.case = TRUE)    # only the first element change 

gsub("Today is","Yesterday was",s1)
gsub("beautiful","good",s1)
gsub("Dog","Cow",s2)
gsub("Dog","Cow",s2,ignore.case = TRUE)
gsub("Dog","Cow",s3,ignore.case = TRUE) 

news="Good morning. Weather forecast says that there will no sign of raining in the morning. But will be in the evening."
news

regexpr("morning",news,ignore.case = TRUE)
regexec("morning",news,ignore.case = TRUE)[[1]]
regexec("morning",news,ignore.case = TRUE)[[1]][1]
gregexpr("morning",news,ignore.case = TRUE)





















