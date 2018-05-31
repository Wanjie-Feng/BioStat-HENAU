setwd("C:/Users/Administrator/BioStat-2018/Assignment-1")#打开文件目录
a<-readLines("tmp.fastq")#读取序列
z<-seq(2,10000,4)#从第二行开始，依次提取碱基序列所在行，步长为4
y.seq<-a[z]#读所有碱基
x<-unlist(strsplit(y.seq,split = ""))#将所有碱基单独拆分成一个字符串，并将列表赋值给向量x
x.tab<-table(x)#计算各个碱基的数目
x.tab.p<-round(x.tab/sum(x.tab)*100,2)#计算各碱基所占的百分比，小数点后两位
pie(x.tab.p,col = c("purple","pink","blue","yellow","gray"),labels = paste(names(x.tab.p),x.tab.p,"%"))#画图