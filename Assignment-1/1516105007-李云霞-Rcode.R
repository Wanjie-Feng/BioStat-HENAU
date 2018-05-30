#打开文件路径
setwd("C:/Users/acer/Desktop/git.sth/BioStat-2018/Assignment-1") 
#读取序列
T<-readLines("tmp.fastq")
#从第二行开始按照行序列号提取碱基序列所在行
i<-seq(2,10000,4)
T.seq<-T[i]
#将所有碱基序列行按单个字母拆分,并将列表赋值给向量x
x<-unlist(strsplit(T.seq,split = ""))
#分别计算各种碱基的总数
x.tab<-table(x)
#各种碱基出现的百分比(小数点后三位)
x.tab.p<-round(x.tab/sum(x.tab)*100,3)
#画图
pie(x.tab.p)
pie(x.tab.p,col = c("yellow","gray","green","blue","purple"),labels = paste(names(x.tab.p),x.tab.p,"%"))
