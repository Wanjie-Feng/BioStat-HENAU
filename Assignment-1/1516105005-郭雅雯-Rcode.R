#设置工作路径
setwd( "C:/Users/Jenny/Desktop")
#读入文件
a<-readLines("tmp.r")
#计算序列数
y<-length(a)/4
#创建序列行
b<-seq(from=2,to=10000,by=4)
#提取序列行
c<-a[b]
#拆分序列，变为单个元素
d<-unlist(strsplit(c,""))
#输出各碱基相同数
x<-table(d)
#计算百分比
f<-paste(100*x/sum(x),"%")
#画饼图
pie(x,labels= f,col=rainbow(length(x)))
legend("topright",c("A","C","G","N","T"),fill=rainbow(length(x)))