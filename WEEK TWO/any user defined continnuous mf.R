library(ggplot2)
x <- 1:50
df <- data.frame(x)
ggplot(df, aes(x))+stat_function(fun = function(x) x^2/(x-1))

library(ggplot2)
x <- 1:10
df <- data.frame(x)
ggplot(df, aes(x))+stat_function(fun = function(x) x^3/(x+1))

library(ggplot2)
x <- 1:10
df <- data.frame(x)
ggplot(df, aes(x))+stat_function(fun = function(x) x^2/(x^3))
