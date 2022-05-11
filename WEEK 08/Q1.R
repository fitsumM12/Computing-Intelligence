"
Implement a FIS for weather forecasting give 3 linguistic variable(temperature,
humidity, precipitation)
"
library(FuzzyR)
library(sets)
library(ggplot2)
## weather forecasting FIS
sets_options("universe", seq(from = 0, to = 100, by = 0.5))

#Linguistic variables
variables <- set(
  temperature= fuzzy_partition(varnames = c(cold = 9.25, good = 21.75, hot = 27.5),
                        sd = 5.0),
  humidity = fuzzy_partition(varnames = c(dry = 30, good = 60, wet = 80),
                        sd=3),
  precipitation = fuzzy_partition(varnames = c(no_rain = 30, little_rain = 60,rain = 90),
                       sd = 7.5),
  weather = fuzzy_partition(varnames = c(bad=40, ok=65, perfect=80),
                           FUN = fuzzy_cone, radius = 10)
)
# Fuzzy Rules
rules <- set(
  fuzzy_rule(temperature %is% good && humidity %is% dry && precipitation %is% no_rain,
             weather %is% perfect),
  fuzzy_rule(temperature %is% hot && humidity %is% wet && precipitation %is% rain,
             weather %is% bad),
  fuzzy_rule(temperature %is% cold, weather %is% bad),
  fuzzy_rule(temperature %is% good || humidity %is% good || precipitation %is% little_rain,
             weather %is% ok),
  fuzzy_rule(temperature %is% hot && precipitation %is% little_rain,
             weather %is% ok),
  fuzzy_rule(temperature %is% hot && humidity %is% dry && precipitation %is% little_rain,
             weather %is% ok)
)
system<- fuzzy_system(variables, rules)
print(system)
plot(system)

# Dataset 01
fi <- fuzzy_inference(system, list(temperature=75, humidity=0, precipitation=70))
plot(fi)
x_val = gset_defuzzify(fi, "centroid")
y_val = fi[round(x_val)]
lines(x_val, y_val, type = 'h', lty =2, col = "red")
axis(1, at = x_val, las = 2)

# Dataset 02
fi_1 <- fuzzy_inference(system, list(temperature=30, humidity=0, precipitation=70))
plot(fi_1)
x_val = gset_defuzzify(fi_1, "largestofmax")
y_val = gset_memberships(fi_1[round(x_val)])
lines(x_val, y_val, type = 'h', lty =2, col = "red")
axis(1, at = x_val, las = 2)
gset_defuzzify(fi_1, "largestofmax")
print(x_val)
sets_options("universe",NULL)
