library(FuzzyR)
library(sets)
## FUZZY IF THEN RULES
# A*= Fact(fuzzy set on x)
# B*= Qualified consequent(Fuzzy Set on Y)
# R = A->B = Fuzzy Rule on XxY, where  A is anticident and B is consequent

mf0<- c(0.1, 0.3, 0.7, 0.8)
A_ <- matrix(mf1, nrow=4, ncol=3, byrow=TRUE)
print(A_)

mf1 <- c(0.38, 0.8, 0.6, 0.2, 0.4, 0.9, 1, 0.8, 0.7, 0.6, 0.2, 0.26)
R <- matrix(mf1, nrow=4, ncol=3, byrow=TRUE)
print(R)

r1 <- 1:4
r2 <- 1:2
c1 <- 1:3

B_ <- matrix(c(0,0,0,0,0,0,0,0,0,0,0,0), nrow=4,ncol=3, byrow=TRUE)
print(B_)
for (i in r1){
  for (j in r2){
    for (k in  c1){
      B_[i,j] <- max(B_[i,j], min(A_[i,k], R[k,j]))
    }
  }
}
print(B_)
