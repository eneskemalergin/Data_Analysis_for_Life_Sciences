## Author: Enes Kemal Ergin
## Date : 03/03/15

# Week 3 ~ Inference 2
# Homework 5
# Part 3

babies = read.table("https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/babies.txt", header=TRUE)
bwt.nonsmoke = babies$bwt[babies$smoke==0]
bwt.smoke = babies$bwt[babies$smoke==1]

N=15
reject <- function(N,alpha){
  sample.bwt.nonsmoke <- sample(bwt.nonsmoke,N)
  sample.bwt.smoke <- sample(bwt.smoke,N)
  pval <- t.test(sample.bwt.nonsmoke,sample.bwt.smoke)$p.value
  ifelse(pval < alpha,1,0)
}
mean(replicate(1000,reject(N,0.1)))

mean(replicate(1000,reject(N,0.05)))

mean(replicate(1000,reject(N,0.01)))
