setwd("C:/Users/11604/Desktop/Homework/BioStat-2018/Assignment-1")#打开文件所在目录
S=length(LN <-readLines("tmp.fastq"))#将文件导入R,逐行读取文件，生成向量或列表，并计算向量长度（或列表中元素个数元素）
s=S/4#计算碱基序列条数
c=gsub("N","",LN[seq(from= 2,to= s,by= 4)])#从第二行开始，依次提取碱基序列所在行，步长为4，同时删除字符N
p=strsplit(c,"")# 将每行序列中的碱基单独拆分成为一个字符串
x=table(P=unlist(p))#将列表转化为向量，并计算出相同元素的个数
v<-paste(names(x),":" ,round(100*x/sum(x), 2),"%") #计算出碱基的频率
pie(x,labels= v ,col=rainbow(length(x)),main = "饼图")#生成饼图
print(s)#输出碱基序列条数