Attendence<-scan()#import details just copy and past after run this

Salary<-scan()

Years<-scan()

Attendence#read imported details

Salary

Years

data<-data.frame(Attendence,Salary,Years)
data

fix(data)

boxplot(Attendence,main="Boxplot for Attendance", ylab="Attendance")

boxplot(Salary,main="Boxplot for Salary",ylab="Slary")

boxplot(Years,main="Boxplot for Years",ylab="Years")

boxplot(Attendence,main="Boxplot for Attendance", ylab="Attendance",horizontal = TRUE)#create boxplot in horizontal

boxplot(Years,outpch=8,main="Boxplot for Years",ylab="Years",horizontal = TRUE)

hist(Attendence,main = "Histogram for Attendance",ylab = "Frequency")

hist(Salary,main = "Histogram for Salary",ylab = "Frequency")

hist(Years,main = "Histogram for Years",ylab = "Frequency")

#Stem-leaf plot

stem(Attendence)

stem(Salary)

stem(Years)

summary(data)#to get the 5 number summary

sapply(data, sd)#standard deviation for whole data set

sd(Salary)#for specific data set

sd(Attendence)

sd(Years)


mean(Attendence)

mean(Salary)

mean(Years)

quantile(Years)

IQR(Years)

sapply(data, IQR)#IQR for whole data set

table(Years)

get.mode<-function(x){
  counts<-table(x)
  names(counts[counts==max(counts)])
}

get.mode(Years)

find.outliers<-function(h){
  q1<-quantile(h)[2]
  q3<-quantile(h)[4]
  
  iqr<-q3-q1
  
  ub<-q3+1.5*iqr
  lb<-q1-1.5*iqr
  
  print(paste("Upper Bound=",ub))
  print(paste("Lower Bound=",lb))
  
  print(paste("Outliers:",paste(sort(h[h<lb | h>ub]),collapse = ".")))
}

find.outliers(Years)