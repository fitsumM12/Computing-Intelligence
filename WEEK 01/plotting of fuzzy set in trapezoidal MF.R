library(FuzzyR)
mf <- genmf('trapmf', c(10,20,30,40))
trap <- evalmf(0:100,mf)
plot(trap,type='l',col="red", main="trapezoidal mf case 1")

library(FuzzyR)
mf <- genmf('trapmf', c(20,40,60,100))
trap <- evalmf(0:120, mf)
plot(trap,type='l', col="red", main="trapezoidal mf case 2")

library(FuzzyR)
mf <- genmf('trapmf', c(5,15,30,80))
trap <- evalmf(0:180, mf)
plot(trap,type='l', col="red", main="trapezoidal mf case 3")