library(sets)
mf1 <- c(0.1, 0.3, 0.7, 0.9, 1.0, 0.8, 0.6, 0.2, 0.3, 0.9, 0.4)
N <- matrix(mf1, nrow=4, ncol=3, byrow=TRUE)
print(m)

mf2 <- c(0.3, 0.8, 0.6, 0.2, 0.3, 0.9)
N <- matrix(mf2, nrow=4, ncol=3, byrow=TRUE)
print(N)

r1 <- 1:4
r2 <- 1:2
clr2 <- 1:3

mul <- matrix(c(0,0,0,0,0,0,0,0), nrow=4,ncol=2, byrow = TRUE)
for(i in r1)
{
  for (j in r2)
  {
    mul[i][j]<-0
    for(clr2)
  }
}