readLines("C:/Users/Administrator/Desktop/BioStat-2018/Assignment-1")
setwd("C:/Users/Administrator/Desktop/BioStat-2018/Assignment-1")           
d<-readLines("tmp.fastq")                 
i<-seq(from= 2,to= 10000,by= 4)#从第二行开始，从第二行开始，依次提取碱基序列所在行，步长为4
d.seg<-d[i]#读所有碱基
X<-unlist(strsplit(d.seg,,split = ""))# 将每行序列中的碱基单独拆分成为一个字符串，并且将列表改为向量。
x.tab<-table(X)#计算各个碱基的数目
x.tab.p<-round(x.tab/sum(x.tab)*100,2)#计算其比例，小数点后两位
pie(x.tab.p,col = c("red","grey","green","yellow"),
    labels = paste(names(x.tab.p),x.tab.p,"%"),main = "pie chart of base ratio")
