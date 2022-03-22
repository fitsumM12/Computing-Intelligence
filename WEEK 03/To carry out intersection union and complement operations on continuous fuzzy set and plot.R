library(FuzzyR)
library(sets)
library(ggplot2)
mf1 <- genmf('trapmf', c(10,20,30,50))
mf2 <- genmf('trapmf', c(80,50,70,95))
trap1 <- evalmf(0:100,mf1)
trap2 <- evalmf(0:100,mf2)
plot(trap1, type="l", col="red")
plot(trap2, type="l", col="green")

fuzzy_logic("Zadeh")
mf3 <- .T.(trap1,trap2)
mf4 <- .S.(trap1,trap2)
plot(mf3, type="l", col="blue")
plot(mf4, type="l", col="magenta")


fuzzy_logic("product")
mf5 <- .T.(trap1,trap2)
mf6 <- .S.(trap1,trap2)
plot(mf5, type="l", col="blue")
plot(mf6, type="l", col="magenta")


mf5 <- .N.(trap1,trap2)
mf6 <- .N.(trap1,trap2)
plot(mf5, type="l", col="blue")
plot(mf6, type="l", col="magenta")


fuzzy_logic("Lukasiewicz")
mf7 <- .T.(trap1,trap2)
mf8 <- .S.(trap1,trap2)
plot(mf7, type="l", col="blue")
plot(mf8, type="l", col="magenta")


fuzzy_logic("drastic")
mf7 <- .T.(trap1,trap2)
mf8 <- .S.(trap1,trap2)
plot(mf7, type="l", col="blue")
plot(mf8, type="l", col="magenta")
