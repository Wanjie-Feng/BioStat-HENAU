setwd( "C:/Users/Jenny/Desktop")
a<-readLines("tmp.r")
#the number of the genes
y<-length(a)/4
b<-seq(from=2,to=10000,by=4)
c<-a[b]
d<-unlist(strsplit(c,""))
x<-table(d)
f<-paste(100*x/sum(x),"%")
pie(x,labels= f,col=rainbow(length(x)))
legend("topright",c("A","T","C","G"),fill=rainbow(length(x)))