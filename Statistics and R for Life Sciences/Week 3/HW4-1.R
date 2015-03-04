## Author: Enes Kemal Ergin
## Date : 03/03/15

# Week 3 ~ Inference 1
# Homework 4
# Part 1
babies = read.table("https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/babies.txt", header=TRUE)
bwt.nonsmoke = babies$bwt[babies$smoke==0]
bwt.smoke = babies$bwt[babies$smoke==1]

bwt.nonsmoke30<-bwt.nonsmoke[1:30]
bwt.smoke30<-bwt.smoke[1:30]
t.test(bwt.nonsmoke30, bwt.smoke30)$statistic
