library(tidyverse)
##GEO数据集下载##
install.packages("GEOquery")
##安装GEOquery
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("GEOquery")
library(GEOquery)
GSE39582_rawdata<-getGEO("GSE39582",GSEMatrix = TRUE,getGPL = F,destdir = "./")
##提取临床数据
GSE39582_pdata=pData(GSE39582_rawdata[[1]])
head(GSE39582_pdata)##查看临床数据
##提取表达数据
GSE39582_expSet=exprs(GSE39582_rawdata[[1]])
GSE39582_expSet[1:5,1:5]

##GEO基因注释##

