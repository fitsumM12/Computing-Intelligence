library(FuzzyR)
library(sets)
library(ggplot2)
df <- data.frame(x = c(1,2,3,4,5))
mf1 <- c(0.1, 0.4, 0.9, 0.7, 0.3)
ggplot(data = df, aes(x=x, y=mf1, group=1))+
  geom_segment(aes(x = x, xend = x, y = 0, yend = mf1),col="red")+
  geom_point(col="red")

mf2 <- c(0.3, 0.4, 0.9, 1, 0.1)
ggplot(data=df, aes(x = x, y = mf2, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf2),col = "green")+
  geom_point(col="green")

mf3 <- .N.(mf1)
ggplot(data=df, aes(x = x, y = mf3, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf3),col = "cyan")+
  geom_point(col="cyan")

mf4 <- .N.(mf2)
ggplot(data=df, aes(x = x, y = mf4, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf4),col = "black")+
  geom_point(col="black")

mf5 = .T.(mf1, mf2)
ggplot(data=df, aes(x = x, y = mf5, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf5),col = "orange")+
  geom_point(col="orange")

mf6 = .S.(mf1, mf2)
ggplot(data=df, aes(x = x, y = mf6, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf6),col = "blue")+
  geom_point(col="blue")

fuzzy_logic("product")
mf7 <- .T.(mf1, mf2)
ggplot(data=df, aes(x = x, y = mf7, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf7),col = "gray")+
  geom_point(col="gray")

mf8 <- .S.(mf1, mf2)
ggplot(data=df, aes(x = x, y = mf8, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf8),col = "magenta")+
  geom_point(col="magenta")

fuzzy_logic("Lukasiewicz")
mf9 <- .T.(mf1, mf2)
ggplot(data=df, aes(x = x, y = mf9, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf9),col = "gray")+
  geom_point(col="gray")


mf10 = .S.(mf1,mf2)
ggplot(data=df, aes(x = x, y = mf10, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf10),col = "magenta")+
  geom_point(col="magenta")


fuzzy_logic("drastic")
mf11 = .T.(mf1, mf2)
ggplot(data=df, aes(x = x, y = mf11, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf2),col = "gray")+
  geom_point(col="gray")

mf12 <- .S.(mf1, mf2)
ggplot(data=df, aes(x = x, y = mf12, group = 1))+
  geom_segment(aes(x=x, xend = x, y = 0, yend = mf12),col = "magenta")+
  geom_point(col="magenta")

#Verification of T-Norm Identity Equation
fuzzy_logic("zedah")
.T.(mf1, mf2)
fuzzy_logic("product")
.T.(mf1,mf2)
fuzzy_logic("lukasiewi")