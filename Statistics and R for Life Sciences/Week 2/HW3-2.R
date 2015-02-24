## Author: Enes Kemal Ergin
## Date : 02/24/15

# Week 2 ~ Probability Distributions 2
# Homework 3
# Part 2

library(gapminder)
data(gapminder)
head(gapminder)

# Gets data with year 1952
x <- gapminder[gapminder$year == 1952,]
x
hist(x$pop)
# Standart deviation of the log10 of population size of the countries in 1952.
sd(log10(x$pop))

y <- log10(x$pop)
z <- (y-mean(y))/sd(y)
qqnorm(z)
abline(0,1)
max(z)

F = function(q) pnorm(q, mean=mean(y), sd=sd(y))
n = length(y)
(F(7)-F(6))*n

ps = ((1:n) - 0.5)/n
qnorm(ps[1])
