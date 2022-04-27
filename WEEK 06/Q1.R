library(FuzzyR)
library(sets)
# Find De-fuzzified values

# Centroid
mf1<-genmf('trapmf', c(10,20,40,70))
trap<-evalmf(0:100, mf1)
plot(trap, type="l",main="Trapezoidal MF",lwd=3)
crisp_val_1 <-defuzz(0:100,trap,"centroid")
print(crisp_val_1)
abline(v=crisp_val_1, col="red",lty=2,lwd=3)



# Bisector of Area
mf1<-genmf('trapmf', c(10,20,40,70))
trap<-evalmf(0:100, mf1)
plot(trap, type="l",main="Trapezoidal MF",lwd=3)
crisp_val_2 <-defuzz(0:100,trap,"bisector")
print(crisp_val_2)
abline(v=c(crisp_val_1, crisp_val_2), col=c("red","green"),lty=2,lwd=3)

# mean of Maximum
crisp_val_3  <- defuzz(0:100, trap,"mom")
print(crisp_val_3)
abline(v=c(crisp_val_1, crisp_val_2,crisp_val_3), col=c("red","green","blue"),lty=2,lwd=3)

# Largest of Maximum
crisp_val_4  <- defuzz(0:100, trap,"lom")
print(crisp_val_4)
abline(v=c(crisp_val_1, crisp_val_2,crisp_val_3,crisp_val_4), col=c("red","green","blue","brown"),lty=2,lwd=3)

# smallest of Maximum
crisp_val_5  <- defuzz(0:100, trap,"som")
print(crisp_val_5)
abline(v=c(crisp_val_1, crisp_val_2,crisp_val_4,crisp_val_5), col=c("red","green","blue"),lty=2,lwd=3)

