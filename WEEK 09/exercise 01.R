"
LAB 10
 - EXPERIMENT 9
 - EXPERIMENT 10
exp 08: Design a neural network to classify the application for 
a testimonal  job placement  (placed = 5, not place = 0)

"
## Exp 9

## install.packages("neuralnet")
library(neuralnet)

## creating training data set
## TKS - technical knowledge score
## CSS - communication skills score
## placed - student placed
TKS = c(20, 10, 30, 20, 80, 30)
CSS = c(90, 20, 40, 50, 50, 80)
placed = c(1,0, 0, 0, 1, 1)
df = data.frame(TKS, CSS, placed)
## creating the NN
nn = neuralnet(placed~TKS+CSS, data = df, hidden = 3, 
               act.fct = "logistic", linear.output = FALSE)
plot(nn)

## Creating Testing Data set
TKS = c(30, 40, 85)
CSS = c(85, 50, 40)
test = data.frame(TKS, CSS)

## predicting the output  using NN(neural network)
predict = compute(nn, test)
predict$net.result


## Converting probabilities into the binary classes
prob = predict$net.result
pred = ifelse(prob>0.5, 1, 0)
pred


