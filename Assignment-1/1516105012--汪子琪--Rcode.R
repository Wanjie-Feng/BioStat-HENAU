setwd("C:/Users/asus/BioStat-2018/Assignment-1")
S=length(LN <-readLines("tmp.fastq"))
s=S/4
c=gsub("N","",LN[seq(from= 2,to= s,by= 4)])
p=strsplit(c,"")
x=table(P=unlist(p))
v<-paste(names(x),":" ,round(100*x/sum(x), 2),"%")
pie(x,labels= v ,col=rainbow(length(x)),main ="the pie chart of WANG")
