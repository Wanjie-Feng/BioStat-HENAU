# Assignment 1

文件tmp.fastq是二代测序仪的测序结果的一小部分。  
fastq文件格式详见以下网页：  
http://blog.sciencenet.cn/blog-630246-813262.html  
http://boyun.sh.cn/bio/?p=1901  
https://www.plob.org/article/432.html  

fastq文件是纯文本格式文件，可以用写字板或者Notepad++打开，建议使用Notepad++打开。  
Notepad++下载地址：  
https://notepad-plus-plus.org/zh/download/v7.5.6.html  

要求：
统计tmp.fastq中有多少条序列。  
统计所有测序序列中四种不同碱基（A、T、C、G）的比例（百分比），并用饼图表示。  
需要提交R代码以及生成的饼图图片，用自己的学号和姓名标出来，如下：  
学号-姓名-Rcode.R  
学号-姓名-pie.png  


提示：需要用到的R函数有readLines、seq、strsplit、unlist、table、pie等。

