
source("plotRandomFunction.R")

## Line 2 tells R to open and run all the 
## code in the file, "plotRandomFunction.R"

plotRandom(n=20)
plotRandom(n=1000)
plotRandom(n=53)
plotRandom(n=-43.531)
plotRandom(n=43.531)
plotRandom(n="thirty")


plotRandom(n=60, mu=70, sigma =2.3)

plotRandom(n=60000, mu=70, sigma = 2.3, hist_breaks = 30)

set.seed(20220318)
plotRandom(n=20)

## Playing around with bin sizes and how hist() works
set.seed(1)
x<- rnorm(n=200)

hist(x)
hist(x, breaks = 1)
hist(x, breaks = 0)
# Invalid, you at least have to have breaks=1
hist(x, breaks = 3)
hist(x, breaks = 12)
hist(x, breaks = 50)

## Today, Match 28th, we will update our function to
##  prevent a user from being stupid
plotRandom(n=-20)
## there is an error because it is negative

plotRandom(n=-43.531)
plotRandom(n=43.531)
## Line 33 works, but what is it doing?
##  it is rounding the number, so it is not accurate
##    n should be a positive integer (the natural numbers)

##To figure out what it is doing...
x<- rnorm (n=43.531)
length(x)
## So it appears to be truncated

## Lets do two things to our program
##    1. prevent user from specifying a negative number
##    2.If the user specifies a positive "reak" number
##      we should tell them what number value is actually being used
