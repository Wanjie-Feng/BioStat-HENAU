

d <- readLines("C:/Users/Administrator/Desktop/BioStat-2018/Assignment-1/tmp.fastq")
a<-length(d)/4
b<-seq(from=2,to=10000,by=4)
c<-d[b]
e<-unlist(strsplit(c,""))
f<-table(e)
t<-paste(round(100*f/sum(f),2),"%")
pie(f,labels=t,col=rainbow(length(f)),main = "the pie of the gene sequences")
 
legend("topright",c("A","C","G","N","T"),fill=rainbow(length(f)))