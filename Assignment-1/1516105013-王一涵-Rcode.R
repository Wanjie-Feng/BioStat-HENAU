设置工作环境
setwd ("e:/")
打开文件
con = (file("e:/tmp.fastq"))
用readLines读取文件赋值于a
a<-readLines("tmp.fastq")
序列总条数
b<-length(a)/4
生成序列所在行行号
c<-seq(from=2,to=10000,by=4)
提取序列所在行
d<-a[c]
拆分数据为单个元素
y<-unlist(strsplit(d,""))
统计相同字母个数
x<-table(y)
计算各自百分比
t<-paste(100*x/sum(x),"%")
生成饼图
pie(x,labels=t,col=rainbow(length(x)))
生成图例
legend("topright",c("A","C","G","N","T"),fill = rainbow(length(x)))
