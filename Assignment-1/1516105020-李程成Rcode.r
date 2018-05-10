#统计序列:先获取文档tmp.fastq有多少行，把行数赋值给a，原文档中4行代表一个序列，再把结果除以4。	   
a <- length(readLines(con = file("E:/git/BioStat-2018/Assignment-1/tmp.fastq"), n = 10000))/4
a
#统计所有测序序列中四种不同碱基（A、T、C、G）的比例（百分比），并用饼图表示。
#将四种碱基数统计出来，计算四种碱基比例，以之前统计数顺序写出，画图。
pie(table(unlist(strsplit(readLines(con = file("E:/git/BioStat-2018/Assignment-1/tmp.fastq"), n = 10000)[seq(from=2, to=10000, by=4)], NULL))),labels= paste(100*table(unlist(strsplit(readLines(con = file("E:/git/BioStat-2018/Assignment-1/tmp.fastq"), n = 10000)[seq(from=2, to=10000, by=4)], NULL)))/sum(table(unlist(strsplit(readLines(con = file("E:/git/BioStat-2018/Assignment-1/tmp.fastq"), n = 10000)[seq(from=2, to=10000, by=4)], NULL)))),"%"),col=rainbow(length(table(unlist(strsplit(readLines(con = file("E:/git/BioStat-2018/Assignment-1/tmp.fastq"), n = 10000)[seq(from=2, to=10000, by=4)], NULL))))))
legend("center",c("A","C","G","N","T"),fill=rainbow(length(table(unlist(strsplit(readLines(con = file("E:/git/BioStat-2018/Assignment-1/tmp.fastq"), n = 10000)[seq(from=2, to=10000, by=4)], NULL))))))