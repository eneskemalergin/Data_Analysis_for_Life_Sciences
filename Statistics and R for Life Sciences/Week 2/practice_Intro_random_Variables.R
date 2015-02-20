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

