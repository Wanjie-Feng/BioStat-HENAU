setwd("E:/Git/homework/BioStat-2018/Assignment-1")#���ļ�����Ŀ¼
S=length(LN <-readLines("tmp.fastq"))#���ļ�����R,���ж�ȡ�ļ��������������б��������������ȣ����б���Ԫ�ظ���Ԫ�أ�
s=S/4#��������������
c=gsub("N","",LN[seq(from= 2,to= s,by= 4)])#�ӵڶ��п�ʼ��������ȡ������������У�����Ϊ4��ͬʱɾ���ַ�N
p=strsplit(c,"")# ��ÿ�������еļ��������ֳ�Ϊһ���ַ���
x=table(P=unlist(p))#���б�ת��Ϊ���������������ͬԪ�صĸ���
v<-paste(names(x),":" ,round(100*x/sum(x), 2),"%") #����������Ƶ��
pie(x,labels= v ,col=rainbow(length(x)),main = "Fun's pie chart of base ratio")#���ɱ�ͼ
print(s)#��������������