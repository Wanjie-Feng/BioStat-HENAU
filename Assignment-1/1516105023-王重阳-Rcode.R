#read tmp.fastq
x <- readLines(con = ("C:/Users/Administrator/Desktop/tmp.fastq"))
#count the NO. of sequences
x1 <- length(x)/4
#print the NO. of sequence
print(x1)
#generate a sequence of numbers from 2 to 10000 & increment equals 4
x2 <- x[seq(from=2,to=10000,by=4)]
#exclude the "N"
x2=sub("N","",x2)
#String splitting & convert to vector
x2 <-unlist(strsplit(x2,""))
#Count the frequency of each base
x2 <- table(x2)
x3 <- round((100*x2/sum(x2)),2)
x3 <- paste(x3, "%", sep = "")
#label the pie chart
label <- c("A","C","G","T")
x3 <- paste(label,":",x3,sep="")
#Draw a pie chart
pie(x2,labels=x3,col=terrain.colors(length(x2)),main = "wildreams:base pie chart")
