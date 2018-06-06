setwd( "C:/Users/Administrator/Desktop/C/Assignment-1")
T<-readLines("tmp.fastq")
i<-seq(2,10000,4)
T.seq<-T[i]
x<-unlist(strsplit(T.seq,split=""))
x.tab<-table(x)
x.tab.p<-round(x.tab/sum(x.tab)*100,3)
pie(x.tab.p)
pie(x.tab.p,col = c("yellow","gray","green","blue","purple"),labels = paste(names(x.tab.p),x.tab.p,"%"))


