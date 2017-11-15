source("function2.txt")
par(mfrow=c(1,1))
maximaOf5Dice = maxdice(1000000,5)
probability = c()
randomVar = c()
uniques = unique(maximaOf5Dice,incomparables = FALSE)

for(i in sort(uniques)){
  probability = c(probability,length(which(maximaOf5Dice == i))/length(maximaOf5Dice))
  randomVar = c(randomVar,i)
}

expectation = c(randomVar*probability)
cbind(randomVar,probability,expectation)
sum(expectation)


#second part of B
maximaOf2Dice = maxdice(1000000,2)
probability = c()
randomVar = c()
uniques = unique(maximaOf2Dice,incomparables = FALSE)

for(i in sort(uniques)){
  probability = c(probability,length(which(maximaOf2Dice == i))/length(maximaOf2Dice))
  randomVar = c(randomVar,i)
}

expectation = c(randomVar*probability)
cbind(randomVar,probability)
sum(probability)
probability[[3]]

