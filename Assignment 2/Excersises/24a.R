source("function2.txt")
par(mfrow=c(1,1))
maximaOfDice = maxdice(1000,2)

for(i in 1:length(maximaOfDice)){
  meanArray[[i]]= mean(maximaOfDice[1:i])
}
names(meanArray) = c(1:length(meanArray))
plot(meanArray,names.arg =names(meanArray),type = "l",ylab = "Mean of the maximum sum(s) of 2 dice",xlab = "Amount of throws with 2 dice", main = "Mean of max sum with N throws of 2 dice",ylim = c(2,5))