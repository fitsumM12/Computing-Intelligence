#MAX-PRODUCT COMPOSITION
library(FuzzyR)
library(sets)
mf1 <- c(0.1, 0.3, 0.7, 
         0.9, 1.0, 0.8, 
         0.7, 0.6, 0.2, 
         0.3, 0.9, 0.4)

R1 <- matrix(mf1, nrow=4, ncol=3, byrow=TRUE)
print(R1)

mf2 <- c(0.3, 0.8, 0.6, 0.2, 0.3, 0.9)
R2 <- matrix(mf2, nrow=3, ncol=2, byrow=TRUE)
print(R2)

r1 <- 1:4
r2 <- 1:2
c1 <- 1:3

R3 <- matrix(c(0,0,0,0,0,0,0,0), nrow=4,ncol=2, byrow = TRUE)
print(R3)
for(i in r1)
{
  for (j in r2)
  {
    for (k in c1)
    {
      R3[i,j]<-max(R3[i,j], R1[i,k]*R2[k,j])
    }
  }
}
print(R3)

