library(tictoc)
type <- read.csv("UsoskinTrueLabelsEncoded.csv")
df <- read.csv("Usoskin_preprocessed_data.csv")
df <- df[,-1]
X <- as.matrix(df)
train_data <- read.csv("UsoskinTrain.csv")
train_data <- t(train_data[,c(2,3)])
tic("time for CallR")
output = callr(X,0.3,train_data)
toc()
write.csv(output,"UsoskinPredictedLabels.csv")

