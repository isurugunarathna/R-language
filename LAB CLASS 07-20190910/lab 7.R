getwd()

setwd("C:\\Users\\DELL\\Desktop\\$$@ SLIIT EDUCATIONAL PRESENTATION @$$\\Year 02\\Y2S2\\Probability and Statistics\\Lab\\LAB CLASS 07-20190910")

getwd()

data<-read.table("Forest.txt",header = TRUE,sep = ",")

data

fix(data)

attach(data)

str(data)#summary of data set

max(wind)

summary(temp)

boxplot(wind,horizontal = TRUE,outline = TRUE,pch=8)

median(temp)

mean(wind)

sd(wind)

IQR(wind)

fix(data)

freq<-table(day,month)
freq

mean(temp[month == "sep"])

barplot(freq,beside = TRUE,xlab = "Month", ylab = "Frequency",legend = rownames(freq))