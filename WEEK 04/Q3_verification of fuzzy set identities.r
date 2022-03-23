# Verification of fuzzy set identity
library(FuzzyR)
library(sets)
A <- c(0.1, 0.2, 0.7, 1, 0.6, 0.4)
B <- c(0.4, 0.6, 0.8, 0.9, 1, 0.7)
C <- c(0.2, 0.5, 0.8, 0.9, 0.7, 0.3)

fuzzy_logic("Zadeh")
#IDEMPOTENCY
# 1. AnA = A
.T.(A,A)
# 2. BnB = B
.S.(B,B)

##INVOLUTION
.N.(.N.(A))

##COMMUTATIVITY
.T.(A,B)
.T.(B,A)

.S.(A,B)
.S.(B,A)


#ASSOCIATIVITY
.S.(.S.(A,B),C)
.S.(A,.S.(B,C))

#DISTRIBUTIVITY
.S.(A,.T.(B,C))
.T.(.S.(A,B),.S.(A,C))

.T.(A,.T.(B,C))
.S.(.T.(A,B),.T.(A,C))

#ABSORPTION
.S.(A,.T.(A,B))
A
.T.(A,.S.(A,B))
A

#ABSORPTION OF COMPLEMENT
.S.(A,.T.(.N.(A),B))
.S.(A,B)

.T.(A,.S.(.N.(A),B))
.T.(A,B)
