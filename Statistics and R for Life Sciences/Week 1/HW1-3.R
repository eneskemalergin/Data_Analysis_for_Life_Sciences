## Author: Enes Kemal Ergin
## Date  : 02/16/15

# Week 1 ~ R Programming Skills
# Homework 1 
# Part 3

setwd("C:/Users/Pc-41/Desktop/Biomedical Data Science/Statistics and R for Life Sciences/Week 1")
data <- read.csv("msleep_ggplot2.csv")

# The levels of factor and their order can be seen using the levels() function

# Creates a vector containing following items
vec = c("red", "blue", "red", "green","green", "yellow", "orange")

# makes vec vector factor and store the value in fac.
fac = factor(vec)

fac
# [1] red    blue   red    green  green  yellow orange
# Levels: blue green orange red yellow

# It just prints the levels
levels(fac)
# [1] "blue"   "green"  "orange" "red"    "yellow"

vec == "blue"
# [1] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE

# The levels chosen alphabetically unless we chose otherwise:

fac2 = factor(vec, levels = c("blue","green","yellow","orange","red"))
fac2
levels(fac2)

# Gives all the rodenst in the table...
table(data$order)

# split() is a function which takes a vector and splits it into a list. by grouping vector according to a factor
s = split(data$sleep_total, data$order)
s

# We can pull out a single vector from the list
s[[17]]
s[["Rodentia"]]

# Gives the mean hours of total sleep of the rodents
s = split(data$sleep_total, data$order)
mean(s$Rodentia)

lapply(s, mean)

sapply(s, mean)

tapply(data$sleep_total, data$order, mean)

# sd() function gives the standart deviation..
sd(s$Primates)
