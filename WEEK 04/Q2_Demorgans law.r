library(FuzzyR)
library(sets)
library(ggplot2)
df <- data.frame(x= c(1,2,3,4,5,6))
A <- c(0.1, 0.2, 0.7, 1, 0.6, 0.4)
B <- c(0.3, 0.8, 0.2, 0.6, 1, 0.9)

fuzzy_logic("Zadeh")
#De-Morgan's laws
#Right Hand Side 1st law
.T.(A,B)
#Left Hand Side 1st law
.N.(.S.(.N.(A), .N.(B)))
#First Law proved

#Right Hand Side 2st law
.S.(A,B)
#Left Hand Side 2st law
.N.(.T.(.N.(A), .N.(B)))
#Second law proved

fuzzy_logic("product")
#De-Morgan's laws
#Right Hand Side 1st law
.T.(A,B)
#Left Hand Side 1st law
.N.(.S.(.N.(A), .N.(B)))
#First Law proved

#Right Hand Side 2st law
.S.(A,B)
#Left Hand Side 2st law
.N.(.T.(.N.(A), .N.(B)))
#Second law proved


fuzzy_logic("Lukasiewicz")
#De-Morgan's laws
#Right Hand Side 1st law
.T.(A,B)
#Left Hand Side 1st law
.N.(.S.(.N.(A), .N.(B)))
#First Law proved

#Right Hand Side 2st law
.S.(A,B)
#Left Hand Side 2st law
.N.(.T.(.N.(A), .N.(B)))
#Second law proved

fuzzy_logic("drastic")
#De-Morgan's laws
#Right Hand Side 1st law
.T.(A,B)
#Left Hand Side 1st law
.N.(.S.(.N.(A), .N.(B)))
#First Law proved

#Right Hand Side 2st law
.S.(A,B)
#Left Hand Side 2st law
.N.(.T.(.N.(A), .N.(B)))
#Second law proved
