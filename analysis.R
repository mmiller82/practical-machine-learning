# Get training data and extract needed measurements
trainData <- read.csv("./data/pml-training.csv",na.strings = c("NA",""))


# tidy data
naRemovedTrain <- trainData[,colSums(is.na(trainData)) < 100]
tidyData <- subset(naRemovedTrain, colSums(is.na(trainData)) < 100, select = -c(X))


library(caret)
library(ggplot2)
gbmFit1 <- train(classe ~.,data=tidyData[,7:58], 
                   method="gbm")

trellis.par.set(caretTheme())
ggplot(gbmFit1)

fitControl <- trainControl(## 10-fold CV
    method = "repeatedcv",
    number = 10,
    ## repeated ten times
    repeats = 10)

gbmFit2 <- train(classe ~.,data=data=tidyData[,7:58], 
                   method="gbm", trControl = fitControl)

bestPredict <- subset(tidyData, select = -c(1:6,10,11,21,23,26,35,51))
rfFit1 <-  train(classe ~.,data=bestPredict, method="rf")


preProc <- preProcess((predictData[,-59]),method="pca",pcaComp=2)

modelFit3 <- train(classe ~.,data=predictData, 
                 method="lda", preProcess = "pca")