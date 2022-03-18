library(FuzzyR)
mf <- genmf('gbellmf', c(20,3,50))
gbell <- evalmf(0:100,mf)
plot(gbell,type='l',col="red", main="bell-shaped mf case 1")

library(FuzzyR)
mf <- genmf('gbellmf', c(10,6, 70))
gbell <- evalmf(0:100, mf)
plot(gbell,type='l', col="red", main="bell-shaped mf case 2")

library(FuzzyR)
mf <- genmf('gbellmf', c(5,3,80))
gbell <- evalmf(0:100, mf)
plot(gbell,type='l', col="red", main="bell-shaped mf case 3")
