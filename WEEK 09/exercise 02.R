## Exp 10

## install.packages("neuralnet")
library(neuralnet)

## creating training data set
traininginput =as.data.frame(runif(50, min=0, max=225))
traininginput
trainingoutput = sqrt(traininginput)
trainingoutput
trainingdata = data.frame(traininginput, trainingoutput)
colnames(trainingdata) = c(Input,Output)

print(trainingdata)

## creating the neural network
nn_1= neuralnet(trainingoutput~traininginput , data = trainingdata,
                hidden = 10, threshold = 0.01, lifesign = "full", lifesign.step = 10,
)
print(nn_1)
plot(nn_1)


## creating training dataset
train_in = c(0, 1, 4,9,16,25, 36, 49, 64, 81, 100, 121, 144, 169, 196,225)
train_out = c(0,1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
train_data = data.frame(train_in,train_out)



## creating the neural network
nn_01= neuralnet(train_out~train_in, data = train_data,
                     hidden = 10, threshold = 0.01, lifesign = "full", lifesign.step = 10,
                     )
print(nn_01)
plot(nn_01)
## testing of NN
test_in = as.data.frame((1:20)^2)
test_out = sqrt(test_in)
test_data = cbind(test_in, test_out)
colnames(test_data) = c("Input_1","Output_1")
print(test_data)

nn_1 = neuralnet(formula =Output_1~Input_1, data = test_data,
                 hidden = 10, threshold =0.01, lifesign ="full",
                 lifesign.step = 10)
print(nn_1)
plot(nn_1)
