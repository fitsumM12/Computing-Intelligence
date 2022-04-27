library(FuzzyR)
library(sets)

mf1 <- genmf('trapmf',c(10,20,30,50))
mf2 <- genmf('trapmf',c(30,50,70,95))
trap1 <-evalmf(0:100, mf1)
trap2 <-evalmf(0:100, mf2)

fuzzy_logic("Zadeh")
mf3 <-.T.(trap1,trap2)
mf4 <-.S.(trap1,trap2)
