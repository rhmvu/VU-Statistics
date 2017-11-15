source("function2.txt")
par(mfrow=c(1,1))
maximaOfDice = maxdice(1000,2)
meanArray = c()
for(i in 1:length(maximaOfDice)){
  meanArray[[i]]= mean(maximaOfDice[1:i])
}
names(meanArray) = c(1:length(meanArray))
plot(meanArray,names.arg =names(meanArray),type = "l",ylab = "Mean of the maximum of 2 dice",xlab = "Amount of throws with 2 dice", main = "Mean of max on 2 dice with N throws ",ylim = c(1,6))

# Expectation
probability = c()
randomVar = c()
uniques = unique(maximaOfDice,incomparables = FALSE)

for(i in sort(uniques)){
  probability = c(probability,length(which(maximaOfDice == i))/length(maximaOfDice))
  randomVar = c(randomVar,i)
}

expectation = c(randomVar*probability)
table = cbind(randomVar,probability,expectation)
sum(expectation)
