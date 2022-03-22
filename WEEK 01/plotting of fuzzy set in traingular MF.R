library(FuzzyR)
mf <- genmf('trimf', c(10,20,30))
tri <- evalmf(0:40,mf)
plot(tri,type='l',col="red", main=" triangle mf case 1")

library(FuzzyR)
mf <- genmf('trimf', c(1,2,5))
tri <- evalmf(0:15, mf)
plot(tri,type='l', col="red", main="traingle mf case 2")

library(FuzzyR)
mf <- genmf('trimf', c(20,40,50))
tri <- evalmf(0:70, mf)
plot(tri,type='l', col="red", main="traingle mf case 3")
