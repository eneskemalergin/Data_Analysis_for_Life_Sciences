# Video Study from "Intro to Random Variables"

# Sets the working directory
setwd("C:/Users/Pc-41/Desktop/Biomedical Data Science/Statistics and R for Life Sciences/Week 2")

# Get's the data from specified file.
data <- read.csv("femaleMiceWeights.csv")

data[1:14,2]

data[13:24,2]

mean(data[13:24,2])
# [1] 26.83417
