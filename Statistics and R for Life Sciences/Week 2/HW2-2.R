## Author: Enes Kemal Ergin
## Date : 02/22/15

# Week 2 ~ Probability Distributions 1
# Homework 2
# Part 2

setwd("C:/Users/Pc-41/Desktop/Biomedical Data Science/Statistics and R for Life Sciences/Week 2")
population <- read.csv("femaleControlsPopulation.csv")
population[,1]

mean(population[,1])

# Random Samples
mean(sample(population, 12))
