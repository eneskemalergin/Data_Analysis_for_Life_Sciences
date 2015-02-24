## Author: Enes Kemal Ergin
## Date : 02/24/15

# Week 2 ~ Probability Distributions 2
# Homework 3
# Part 1

setwd("C:/Users/Pc-41/Desktop/Biomedical Data Science/Statistics and R for Life Sciences/Week 2")
install.packages("devtools")
install.packages("Rtools")
library(devtools)
# Downloads the set from specified github repo
install_github("jennybc/gapminder")
library(gapminder)
data(gapminder)
head(gapminder)

# getting data with year 1952 only.
year1952 <- gapminder[gapminder$year==1952,]
#  the proportion of countries in 1952 that have a life expectancy less than or equal to 40
mean(year1952$lifeExp<=40)

# Gives the propostion of countries in 1952 that have a life expectancy betwwen 40 and 60 years
mean(year1952$lifeExp<=60) - mean(year1952$lifeExp<=40)

# Sapply() on a custon function

x <- gapminder[gapminder$year==1952,]
prop = function(q) {
  mean(x <= q)
}
prop(40)

qs = seq(from=min(x), to=max(x), length=20)

props = sapply(qs, prop)

plot(qs, props)

props = sapply(qs, function(q) mean(x <= q))

plot(ecdf(x))
