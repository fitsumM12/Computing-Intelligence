library(FuzzyR)
library(sets)

mf1 <- genmf('trapmf',c(10,20,30,50))
mf2 <- genmf('trapmf',c(30,50,70,95))
trap1 <-evalmf(0:100, mf1)
trap2 <-evalmf(0:100, mf2)

fuzzy_logic("Zadeh")
mf3 <-.T.(trap1,trap2)
mf4 <-.S.(trap1,trap2)
plot(mf4, type="l",main="Trapezoidal")

# Centroid
plot(mf4, type="l",main="Trapezoidal MF",lwd=3)
crisp_val_1 <-defuzz(0:100,mf4,"centroid")
print(crisp_val_1)
abline(v=crisp_val_1, col="red",lty=2,lwd=3)



# Bisector of Area
plot(mf4, type="l",main="Trapezoidal MF",lwd=3)
crisp_val_2 <-defuzz(0:100,mf4,"bisector")
print(crisp_val_2)
abline(v=c(crisp_val_1, crisp_val_2), col=c("red","green"),lty=2,lwd=3)

# mean of Maximum
crisp_val_3  <- defuzz(0:100, mf4,"mom")
print(crisp_val_3)
abline(v=c(crisp_val_1, crisp_val_2,crisp_val_3), col=c("red","green","blue"),lty=2,lwd=3)

# Largest of Maximum
crisp_val_4  <- defuzz(0:100, mf4,"lom")
print(crisp_val_4)
abline(v=c(crisp_val_1, crisp_val_2,crisp_val_3,crisp_val_4), col=c("red","green","blue","brown"),lty=2,lwd=3)

# smallest of Maximum
crisp_val_5  <- defuzz(0:100, mf4,"som")
print(crisp_val_5)
abline(v=c(crisp_val_1, crisp_val_2,crisp_val_3,crisp_val_4,crisp_val_5), 
       col=c("red","green","blue", "brown","orange"),lty=2,lwd=3)
legend(90, 1, legend=c("COA","BOA","MOM","LOM","SOM"),
       col=c("red","green","blue", "brown","orange"), lty=1:2, cex=0.8,lwd = 3)

