setwd("C:/Users/acer/Desktop/git.sth/BioStat-2018/Assignment-1")
d<-readLines("tmp.fastq")
i<-seq(from= 2,to= 10000,by= 4)
d.seq<-d[i]
X<-unlist(strsplit(d.seq,split = ""))
x.tab<-table(X)
x.tab.p<-round(x.tab/sum(x.tab)*100,2)
pie(x.tab.p,col = c("red","green","blue","yellow","grey"),
labels = paste(names(x.tab.p),x.tab.p,"%"),main = "pie chart of base ratio")
