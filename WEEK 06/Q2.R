library(FuzzyR)
library(sets)
# Bisector of Area

mf1<-genmf('trapmf', c(10,20,40,70))
trap<-evalmf(0:100, mf1)
plot(trap, type="l",main="Trapezoidal MF",lwd=3)
crisp_val <-defuzz(0:100,trap,"bisector")
print(crisp_val)
abline(v=crisp_val, col="red",lty=2,lwd=3)