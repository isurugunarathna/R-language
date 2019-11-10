getwd()

setwd("C:\\Users\\DELL\\Desktop\\$$@ SLIIT EDUCATIONAL PRESENTATION @$$\\Year 02\\Y2S2\\Probability and Statistics\\Lab\\LAB CLASS 5-20190825")

getwd()

data<-read.table("Data.txt", header = TRUE,sep=",")#import data with header and sparated by header
fix(data)#check whether the daya import was ok

data

#rename data headers as X1 and X2

names(data)<-c("X1","X2")
attach(data)#you can only one time do this command

fix(data)

hist(X2,main="Histogram for no of shareholders", ylab = "frequency")

#length = class + 1 in this one we have 8 classes

histogram<-hist(X2,main = "Histogram for no of shareholders",breaks = seq(130,270,length=8))

#frequency distribution

breaks<-round(histogram$breaks)#break point of histogram
breaks

freq<-histogram$counts#get frequency values
freq

mids<-histogram$mids#get mid point of histogram
mids

classes<-c()
for(i in 1:length(breaks)-1){
  classes[i]<-paste0("[",breaks[i], ",", breaks[i+1],")")
}#[- left close )- right open 

#cbind - column bind
cbind(classes = classes, frequency = freq)

#add frequency polygon to the same polt
lines(mids,freq)

#Draw frequency ploygon in a new plot
plot(mids, freq, type = 'b', main = "Frequency",xlab = "Shareholders",ylab = "Frequency", ylim = c(0,max(freq)))

#p - only dots b - dots with line

cum.freq<-cumsum(freq)
cum.freq

new<-c()#cumulative values with the
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}
new

#cumulative polygon
plot(breaks,new, type = 'b', main = "Frequency polygon for shareholders",xlab = "Shareholders",ylab = "cumulative Frequency", ylim = c(0,max(cum.freq)))

