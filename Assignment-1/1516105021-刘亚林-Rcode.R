#读入序列
d <- readLines(con = ("E:/tmp.fastq"))
#从第二行开始，从第二行开始，依次提取碱基序列所在行，步长为4
i<-seq(from= 2,to= 10000,by= 4)
#读所有碱基
d.seg<-d[i]
# 将每行序列中的碱基单独拆分成为一个字符串，变成向量
X<-unlist(strsplit(d.seg,,split = ""))
#计算各个碱基的数目
x.tab<-table(X)
#计算其比例，小数点后两位
x.tab.p<-round(x.tab/sum(x.tab)*100,2)
#画出饼图
pie(x.tab.p,col = c("red","grey","green","yellow"),
    labels = paste(names(x.tab.p),x.tab.p,"%"),main = "pie chart of base ratio")