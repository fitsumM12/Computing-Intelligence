library(FuzzyR)
mf <- genmf('trimf', c(10,20,30))
tri <- evalmf(0:40,mf)
plot(tri,type='l',col="red", main=" triangle")
