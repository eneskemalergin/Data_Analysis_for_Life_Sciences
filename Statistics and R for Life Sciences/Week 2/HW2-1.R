## Author: Enes Kemal Ergin
## Date : 02/20/15

# Week 2 ~ Probability Distributions 1
# Homework 2
# Part 1

setwd("C:/Users/Pc-41/Desktop/Biomedical Data Science/Statistics and R for Life Sciences/Week 2")
data = read.csv("femaleMiceWeights.csv")

# splits the columns
s = split(data[,2], data[,1])

# Make a striptchart to show them in chart.
stripchart(s, vertical = TRUE, col = 1:2)

# This adds the means in a plot to show how their distances.
abline(h = sapply(s, mean), col = 1:2)

# Get the summary data, in boolean results.
summary(data[13:24,2] < mean(data[1:12,2]))
#    Mode   FALSE    TRUE    NA's 
# logical       9       3       0 

sum(as.numeric(data[13:24,2] < mean(data[1:12,2])))

# Get the summary data, in boolean results.
summary(data[1:12,2] > mean(data[13:24,2]))
#    Mode   FALSE    TRUE    NA's 
# logical       9       3       0 

sum(as.numeric(data[1:12,2] > mean(data[13:24,2])))

# sample() function generates random samples of a population.
s[["hf"]]
# OR
s$hf
# gives the values of high fat diet mice. Which we called by variable name.

highfat = s$hf
highfat

sample(highfat, 6)
#samples randomly with only six element

# sample() function has 3 arguments x, size, and replace

sample(highfat, 6, replace = TRUE)
# The default setting is FALSE so, you can change it to TRUE

highfat > 30
#  [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE

as.numeric(highfat > 30)
#  [1] 0 0 0 0 0 0 0 1 1 0 1 0

sum(highfat > 30)
# [1] 3

# gives me the average of sum True values respect to conditions  by  dividing it by length of vector.
sum(highfat > 30)/length(highfat)

