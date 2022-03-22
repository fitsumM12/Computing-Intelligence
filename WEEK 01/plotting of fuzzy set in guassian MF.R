library(FuzzyR)
mf <- genmf('gaussmf', c(1.5,30))
guass <- evalmf(0:100,mf)
plot(guass,type='l',col="red", main="Guassian mf case 1")

library(FuzzyR)
mf <- genmf('guassmf', c(2.5, 30))
guass <- evalmf(0:100, mf)
plot(guass,type='l', col="red", main="Guassian mf case 2")

library(FuzzyR)
mf <- genmf('guassmf', c(2,30))
guass <- evalmf(0:100, mf)
plot(guass,type='l', col="red", main="Guassian mf case 3")
