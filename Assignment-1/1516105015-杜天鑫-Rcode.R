d<-readLines("tmp.fastq")
i<-seq(from=2,to=10000,by=4)
d.seg<-d[i]
X<-unlist(strsplit(d.seg,,split = ""))
x.tab<-table(X)
x.tab.p<-round(x.tab/sum(x.tab)*100,2)
pie(x.tab.p,col = c("red","grey","black","blue"),
    labels = paste(names(x.tab.p),x.tab.p,"%"),main = "pie chart of base ratio")

