# Video Study from "Intro to Random Variables 1-2, and null distributions"

# Sets the working directory
setwd("C:/Users/Pc-41/Desktop/Biomedical Data Science/Statistics and R for Life Sciences/Week 2")

# Get's the data from specified file.
data <- read.csv("femaleMiceWeights.csv")

# Subsetting...
data[1:12,2]

data[13:24,2]

# The change on the actual experiment and the control group...
mean(data[13:24,2]) - mean(data[1:12,2])
# [1] 3.020833

# Now we will try to understand is this change caused by biological truths or just a thing that occured

population <- read.csv("femaleControlsPopulation.csv")

control <- sample(population[,1],12)
# Every time we will get different number.
mean(control)

# Make a 1000 different samples mean differences.
n <- 1000
null <- vector("numeric", 1000)
for(i in 1:n){
  control <- sample(population[,1],12)
  treatment <- sample(population[,1],12)
  null[i] < mean(treatment)-mean(control)
}

diff <- mean(data[13:24,2]) - mean(data[1:12,2])
mean(null > diff)


install.packages("rafalib")
# Creating null distribution plot.
n <- 100
library(rafalib)
mypar(1,1)
plot(0,0,xlim = c(-5,5), ylim= c(1,30), type = "n")
totals <- vector("numeric", 11)
for(i in 1:n){
  control <- sample(population[,1],12)
  treatment <- sample(population[,1],12)
  nulldiff <- mean(treatment) - mean(control)
  j <- pmax(pmin(round(nulldiff)+6,11),1)
  totals[j]<-totals[j]+1
  text(j-6,totals[j],pch=15,round(nulldiff,1))
  if(i < 15) scan()
}
