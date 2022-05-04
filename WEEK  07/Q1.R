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
sets_options("universe",seq(0, 40, 0.1))
variables <- set(
  bmi = fuzzy_partition(varnames = c(under = 9.25, fit = 21.75, over = 27.5, obese = 35),
                      sd = 3.0),
  a1c = fuzzy_partition(varnames = c(l = 4, n = 5.25, h = 7),
                      FUN = fuzzy_cone, radius = 5),
  bp = fuzzy_partition(varnames = c(norm = 0, pre = 10, hyp = 20, shyp = 30),
                       sd = 2.5),
  rating = fuzzy_partition(varnames = c(DC=10, ST=5, PF=1),
                           FUN = fuzzy_cone, radius = 5)
)
rules <- set(
  fuzzy_rule(bmi %is% under || bmi %is% obese || a1c %is% 1,
             rating %is% DC),
  fuzzy_rule(bmi %is% over || a1c %is% n || bp %is% pre, 
             rating %is% ST),
  fuzzy_rule(bmi %is% fit && a1c %is% n && bp %is% norm,
             rating %is% PF)
)
system <- fuzzy_system(variables, rules)
print(system)
plot(system)

