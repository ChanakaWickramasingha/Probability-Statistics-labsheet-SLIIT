#q1
#1 - binomial distribution
?Binomial

#1.2
dbinom(40,44,0.92)

#1.3
pbinom(35,44,0.92)

#1.4
pbinom(37,44,0.92, lower.tail = FALSE)

1 - pbinom(37,44,0.92)

#1.5
pbinom(42,44,0.92) - pbinom(39,44,0.92)

#q2
?Poisson
#2.1
dpois(6,4.5)

#2.1
ppois(6,4.5,lower.tail = FALSE)

#q3
?Exponential
#3.1
pexp(3, rate = 1/2)

#3.2
pexp(4, rate = 1/2, lower.tail = FALSE)

#3.3
pexp(4, rate = 1/2) -pexp(2, rate = 1/2)

#q4
?Normal

#4.1
1 -pnorm(37.9, mean = 36.8,sd = 0.4)

#4.2
pnorm(36.9, mean = 36.8, sd = 0.4) - pnorm(36.3, mean = 36.8, sd = 0.4)

#4.3
qnorm(0.012, mean = 36.8, sd = 0.4)

#4.4
qnorm(0.001, mean = 36.8, sd = 0.4, lower.tail = FALSE)

?Binomial
?Poisson
?Exponential
?Normal
