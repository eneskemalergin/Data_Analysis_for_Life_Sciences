## Author: Enes Kemal Ergin
## Date  : 02/16/15

# Week 1 ~ R Programming Skills
# Homework 1 
# Part 2

setwd("C:/Users/Pc-41/Desktop/Biomedical Data Science/Statistics and R for Life Sciences/Week 1")
data <- read.csv("msleep_ggplot2.csv")

# which() funciton gives us the numeric index that satisfies a logical question
which(data$sleep_total > 18) 
# [1] 22 37 43 62 
# Gave us a locations of values which are greater than 18


data$sleep_total[which(data$sleep_total > 18)[1]]

# It gets the row number as a name of it which has a value of following conditions:
rownames(data[data$sleep_total > 18 & data$sleep_rem <= 3, ])

# Sorts the values of specified column
sort(data$sleep_total)

# order() function however, bit more complex than that.
# order() gives back the index, in the original vector.

# gets the first value of specified column after ordering them
order(data$sleep_total)[1]

# to understand statement above:
data$sleep_total[order(data$sleep_total)]

# rank() this function takes the smallest value and put it to the first place and so on...
# it is like soring 
# If it come across with the tie situtation it takes the average of ties.

rank(c(1,2,2,3))
# [1] 1.0 2.5 2.5 4.0

# Gives the first row of the specified columns rank...
rank(data$sleep_total)[1]


# match() function finds the index of the _first_ match of a vector in a second vector
match(c("Cow", "Owl monkey", "Cheetah"), data$name)

# match() function could be used for rearranging object.
idx = match(c("Cow", "Owl monkey", "Cheetah"), data$name)
data[idx,]

# Gives the row number for "Cotton rat" in the data.frame
match("Cotton rat", data$name)