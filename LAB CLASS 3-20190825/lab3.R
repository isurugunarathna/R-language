getwd()

setwd("C:\\Users\\DELL\\Desktop\\$$@ SLIIT EDUCATIONAL PRESENTATION @$$\\Year 02\\Y2S2\\Probability and Statistics\\Lab\\LAB CLASS 3-20190825")

data2<-read.csv("DATA 3.csv",header = TRUE)
fix(data2)

data2

names(data2)<-c("Age","Gender","Accommodation")

data2$Gender<-factor(data2$Gender,c(1,2),c("Male","Female"))


data2$Accommodation<-factor(data2$Accommodation,c(1,2,3),c("Home","Boading","Lodging"))

attach(data2)#you must do this only one time

gender.freq<-table(Gender)#univariate analysis
gender.freq

acc.freq<-table(Accommodation)#univariate analysis
acc.freq

gender_acc.freq<-table(Gender,Accommodation)#bivariate analysis
gender_acc.freq

age_acc.freq<-table(Age,Accommodation)
age_acc.freq

#to draw a pie chart
pie(gender.freq,main="Pie chart for Gender")
pie(acc.freq,main="Pie chart for Accommondation")

#Drawing a bar chart for gender
barplot(gender.freq,main = "Bar Chart",ylab = "Frequency")

barplot(age_acc.freq,main = "Bar Chart",ylab = "Frequency")

barplot(gender_acc.freq,main = "Gender and Accommodation",legend = rownames(gender_acc.freq))#legend references; show rownames in it

barplot(gender_acc.freq,beside = "TRUE",main = "Gender and Accommodation",legend = rownames(gender_acc.freq))

abline(h = 0)#add line in bottem

age_gender.freq<-table(Age,Gender)
age_gender.freq

gender_acc.freq<-table(Gender,Accommodation)
gender_acc.freq

boxplot(Age~Gender,main="boxplot for age by gender",xlab = "Gender",ylab = "Age")

boxplot(Age~Accommodation,outpch=8,main="boxplot for age by gender",xlab = "Accommmodation",ylab = "Age")#outpch means outliers

xtabs(Age~Gender+Accommodation)/gender_acc.freq

