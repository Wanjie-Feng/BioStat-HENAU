#fastq文档读入
data <- readLines(con = ("D:/BioStat-2018/Assignment-1/tmp.fastq"))
#统计tmp.fastq中有多少条序列(设有n条)
n <- length(data)/4
#生成fastq文档中所以碱基序列所在的行的一组行序列号
x <- seq(from=2,to=10000,by=4)
#按照行序列号提取fastq文档中碱基序列所在的所有行
newdata <- data[x]
#将所有碱基序列行中元素按单个字母分隔开，并转换为unlist类型
y <- unlist(strsplit(newdata,""))
#提取y中各个元素出现的频率,并计算出各个元素的百分比
y1 <- table(y)
y2 <- paste((100*y1/sum(y1)),"%")
#画出饼图
sector <- c("A","C","G","N","T")
sectorname <- paste(sector,":",y2,sep="")
pie(y1,labels=sectorname,col=rainbow(length(sectorname)),main = "base pie chart")
