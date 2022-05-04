"
Question: Implementation of a very simplistic underwriting rating 
system by defining linguistic variables about a potential ensure. 
fuzzy rule will be defined based on those linguistic variable, fuzzy
inference will be performed and finally it is defuzzified to an 
underwritting rating.
"
library(FuzzyR)
library(sets)
library(ggplot2)

set_options("universe", seg(0, 40, 0.1))
variables <- set(
  bmi = fuzzy_partion(varnames = c(under = 9.25, fit = 21.75, over = 27.5, obese = 35),
                      sd = 3.0),
  alc = fuzzy_partion(varnames = c(l = 4, n = 5.25, h = 7),
                      FUN = fuzzy_cone, radius = 5),
)