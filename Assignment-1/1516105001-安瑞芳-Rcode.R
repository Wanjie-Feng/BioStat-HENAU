


a<-readLines("C:/Users/Anna/Desktop/BioStat-2018/Assignment-1/tmp.fastq")
x<-unlist(strsplit(a[seq(from=2,to=10000,by=4)],split = ""))
y<-table(x)
y.r<-round(y/sum(y)*100,3)

pie(y,labels = paste(names(y.r),y.r,"%"),col = c("purple","yellow","blue","pink","white"),
    main = "base ratio")


    