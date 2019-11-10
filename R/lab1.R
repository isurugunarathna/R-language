#this is comment

x = 2 #only allowed at the top level
x <- 3 #can use any where
x <<- 5 #normally used in fuction

i = 10 %/% 3 #integer division

t = 5
x == t

x > t
x <= t

isTRUE(5<3)#test if xx true

r = 40

#define a fuction

k<- function()
{
  r <<-30
}
k()
r
g<-c(1,2,3,10)
h<-c("Shalitha","isuru","Bawantha","Bimsuru")

class(g)#display vector
class(h)

v <- c(12,56,26,48,56)
v + 6 #add 6 to each value

v <= 12#test each value greater than,less than or equal

v[v>30]#display only greater than 30 values

v1<-v[v>30]#assign to v1 only greater than 30 values

v1

v2<-v[-6]#call any one

sort(v)#just show values in console area

w <- c(1:10)#disply 1 to 10 numbers and assign them to w

w 

length(v)

rep(5,9)#repeat 5 ; 9 times

rep(1:3,4)#repeat 1 to 3 in 4 times

rep(1:3,each=2)#repeat 1 to 3 each number 2 times

rep(1:4,c(1,5,4,6))#repeat each number respectively

f<-c("m","f","f","m","f")

class(f)

f1<-factor(f)#a sequence assigning a category to each index
f1

l<-list(Name = "A", age = "23", marks<-c(50,56,96,85))#create a list
l

l[["Name"]]
l["Name"]
l$Name


m<-matrix(1:20,nrow = 4, ncol = 5)#add 1 to 20 numbers into matrix
m

n<-matrix(1:20,nrow =5, ncol = 4)
n

q<-matrix(1:20,nrow = 4, ncol = 5,byrow = TRUE)#1234... byrow
q

length(m)#calculate length

o<-c(15,6,24,76,80,4)
m3<-matrix(o,nrow = 2, ncol = 3)#display vector as matrix
m3


m3[1,3]#get exact value from matrix 1st row and seconed colomn

df<-data.frame(name=c("a","b","c"),gender=factor(c("m","f","f")),ht=c(1.5,1.65,1.9),age=c(25,22,23))
df

df["gender"]




#if condition
u<-0

if(u<0)
{
  print("Negative number")
}else if(u>0)
{
  print("Positive number")
}else
{
  print("zero")
}

my.age <- as.integer(readline(prompt = "Enter your age"))

#as.integer-convert value as the integer
#readline- reads text lines from an input file

if(my.age<18)
{
  print("You are not a Major")
  print("You are not eligibale to work")
}else
{
  if(my.age>=18 && my.age<=60)
  {
    print("You are eligibale to work")
    print("Please fill the application")
  }else
  {
    print("as per goverment rules you are too old to work")
    print("Please collect your pension")
  }
}


#loop

for (i in 1:15) #print 1 to 15
{
  print(i)
}

student <- c("Ann","steave","kyle","john")#assign

for (i in 1:4) 
{
  print(student[i]) #print student's names
}

i <-1

while(i <=10)
{
  print(i)
  i<-i+1
}

x <- 2.987

while (x<=4.987) {
  
  x=x+0.987
  print(c(x,x-2,x-1))
}