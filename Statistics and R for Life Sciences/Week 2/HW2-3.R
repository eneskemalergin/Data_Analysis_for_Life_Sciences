## Author: Enes Kemal Ergin
## Date : 02/22/15

# Week 2 ~ Probability Distributions 1
# Homework 2
# Part 3

setwd("C:/Users/Pc-41/Desktop/Biomedical Data Science/Statistics and R for Life Sciences/Week 2")
population <- read.csv("femaleControlsPopulation.csv")
data = read.csv("femaleMiceWeights.csv")

null = replicate(10000, mean(sample(population[,1], 12) - mean(sample(population[,1], 12))))
                 

hist(null)

diff = mean(data[13:24,2]) - mean(data[1:12,2])

# Addes the difference to the histogram
abline(v=diff, col="red")

# Addes negative of the difference
abline(v=-diff, col="red")


# Following two statements gets the one-tailed probability
1 - sum(null < diff) / length(null)

mean(null > abs(diff))


# What is the two-tailed probability of seeing as big a difference as we observed, 
#  calculated from your null distribution?
mean(null > abs(diff)) + mean(null < -diff)

mean(abs(null) > abs(diff))
