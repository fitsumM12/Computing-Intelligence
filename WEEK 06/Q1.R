library(FuzzyR)
library(sets)
# Find De-fuzzified values
# Centroid

mf1<-genmf('trapmf', c(10,20,40,70))
trap<-evalmf(0:100, mf1)
crisp_val <-defuzz(0:100,trap,"centroid")
print(crisp_val)
