 setwd("C:/Users/Administrator/Desktop/BioStat-2018/Assignment-1/")
 T<-readLines("tmp.fastq")
 i<-seq(2,10000,4)
 T.seq<-T[i]
 x<-unlist(strsplit(T.seq,split = ""))
 x.tab<-table(x)
 x.tab.p<-round(x.tab/sum(x.tab)*100,3)
 pie(x.tab.p,col = c("green","red","blue","pink","black"),labels = paste(names(x.tab.p),x.tab.p,"%"))