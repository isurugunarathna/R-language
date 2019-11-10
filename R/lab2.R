print(getwd())#get working directory

setwd("..")#go back one directory

setwd("C:\\Users\\DELL\\Desktop\\$$@ SLIIT EDUCATIONAL PRESENTATION @$$\\Year 02\\Y2S2\\Probability and Statistics\\Lab\\LAB CLASS 2-20190825")
#set new working directory

data<-read.csv("D2.csv", header = TRUE)#import csv file

fix(data)#fix that file

data


#get factorial value

fac<-as.integer(readline(prompt = "Enter a number"))

factorial<-1

if(fac<0)
{
  print("Sorry, factorial dosenot exist negative numbers")
}else if(fac == 0)
{
  print("Factorial of 0 is 1")
}else
{
  for (i  in 1:fac) {
    factorial<-factorial*i
  }
  print(paste("The factorisl of ",fac,"is",factorial))
}


