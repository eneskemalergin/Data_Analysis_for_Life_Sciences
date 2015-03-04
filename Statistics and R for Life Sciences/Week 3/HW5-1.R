## Author: Enes Kemal Ergin
## Date : 03/03/15

# Week 3 ~ Inference 2
# Homework 5
# Part 1

babies = read.table("https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/babies.txt", header=TRUE)
bwt.nonsmoke = babies$bwt[babies$smoke==0]
bwt.smoke = babies$bwt[babies$smoke==1]

N=30
conf.int<-function(){
  sample.bwt.nonsmoke <- sample(bwt.nonsmoke,N)
  sample.bwt.smoke <- sample(bwt.smoke,N)
  bwt.test <- t.test(sample.bwt.nonsmoke,sample.bwt.smoke)
  return (bwt.test$conf.int[2] - bwt.test$conf.int[1])
}
mean(replicate(1000, conf.int()))

popdiff = mean(bwt.nonsmoke) - mean(bwt.smoke)
N=30
diff.compare<-function(){
  sample.bwt.nonsmoke <- sample(bwt.nonsmoke,N)
  sample.bwt.smoke <- sample(bwt.smoke,N)
  bwt.test <- t.test(sample.bwt.nonsmoke,sample.bwt.smoke)
  return (popdiff>bwt.test$conf.int[1] & popdiff<bwt.test$conf.int[2])
}
mean(replicate(1000, diff.compare()))
