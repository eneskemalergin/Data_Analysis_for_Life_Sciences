## Author: Enes Kemal Ergin
## Date : 03/03/15

# Week 3 ~ Inference 2
# Homework 5
# Part 2

d = read.csv("https://courses.edx.org/c4x/HarvardX/PH525.1x/asset/assoctest.csv")
d.table <- table(d)
chisq.test(d.table)$statistic

fisher.test(d.table)$p.value
