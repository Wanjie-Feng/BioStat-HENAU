
R version 3.5.0 (2018-04-23) -- "Joy in Playing"
Copyright (C) 2018 The R Foundation for Statistical Computing
Platform: i386-w64-mingw32/i386 (32-bit)

R是自由软件，不带任何担保。
在某些条件下你可以将其自由散布。
用'license()'或'licence()'来看散布的详细条件。

R是个合作计划，有许多人为之做出了贡献.
用'contributors()'来看合作者的详细情况
用'citation()'会告诉你如何在出版物中正确地引用R或R程序包。

用'demo()'来看一些示范程序，用'help()'来阅读在线帮助文件，或
用'help.start()'通过HTML浏览器来看帮助文件。
用'q()'退出R.

> #设置工作路径
> setwd( "C:/Users/Jenny/Desktop")
> #读入文件
> a<-readLines("tmp.fastq")
> #计算序列数
> y<-length(a)/4
> #创建序列行
> b<-seq(from=2,to=10000,by=4)
> #提取序列行
> c<-a[b]
> #拆分序列，变为单个元素
> d<-unlist(strsplit(c,""))
> #输出各碱基相同数
> x<-table(d)
> #计算百分比
> f<-paste(100*x/sum(x),"%")
> #画饼图
> pie(x,labels= f,col=rainbow(length(x)))
> legend("topright",c("A","C","G","N","T"),fill=rainbow(length(x)))
> 
