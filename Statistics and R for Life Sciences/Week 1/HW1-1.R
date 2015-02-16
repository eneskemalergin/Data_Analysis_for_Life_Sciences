## Author: Enes Kemal Ergin
## Date  : 02/15/15

# Week 1 ~ R Programming Skills
# Homework 1 
# Part 1

# Sets working directory.
setwd("C:/Users/Pc-41/Desktop/Biomedical Data Science/Statistics and R for Life Sciences/Week 1")

# Reads the csv file and assign the value to data variable.
data <- read.csv("msleep_ggplot2.csv")

# shows which class is that
class(data)
# [1] "data.frame"

# Shows the first 6 row of the data
head(data)

# Shows the dimensions
dim(data)
# 83 observations and 11 variables
# 83 rows and 11 columns

# shows the names of columns of a data
colnames(data)

# Get specified info from the data
data$sleep_total
# Only gets the first item from specified column of data.
data$sleep_total[1]

# We can create vectors using c() functions -combine- 

c(data$sleep_total, 1000) # Added one more value to the end of the column

# Plots the 2 criteria from the data.
plot(data$brainwt, data$sleep_total)

# Let's scale it 
plot(data$brainwt, data$sleep_total, log = "x")

# Get the summary of a specified column in data
summary(data$sleep_total)

# Subsetting a data.frame 
data[c(1,2)]

# Subsets with condition
data[data$sleep_total > 18, ] # Having empty parameter for subsetting/indexing means go until it ends

data$sleep_total[c(1,2)] # It takes only first and second value of specified column

mean(data[data$sleep_total > 18, ]$sleep_total)
