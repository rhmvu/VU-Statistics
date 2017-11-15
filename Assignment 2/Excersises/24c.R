source("function2.txt")
par(mfrow=c(2,2))

meanArray1= c()
meanArray8= c()
meanArray64= c()
meanArray256= c()


for (i in 1:1000) {
  meanArray1[[i]] = maxdice(1,2)
  array8 = c(array8,maxdice(8,2))
  meanArray8[[i]] = mean(array8[[i]])
  array64 = c(array64,maxdice(64,2))
  meanArray64[[i]] = mean(array64)
  array256 = c(array256,maxdice(256,2))
  meanArray256[[i]] =  mean(array256)
}


hist(meanArray1,main = "Distribution of sample mean of sample of size n= 1",xlim = c(1,6),xlab = "Sample means", ylab = "Density",freq = FALSE)
curve(dnorm(x, mean=mean(meanArray1), sd=sd(meanArray1)), add=TRUE,col = "red")

hist(meanArray8,main = "Distribution of sample mean of sample of size n= 8",xlim = c(1,6),xlab = "Sample means", ylab = "Density",freq = FALSE)
curve(dnorm(x, mean=mean(meanArray8), sd=sd(meanArray8)), add=TRUE,col = "red")

hist(meanArray64,main = "Distribution of sample mean of sample of size n= 64",xlim = c(1,6),xlab = "Sample means", ylab = "Density",freq = FALSE)
curve(dnorm(x, mean=mean(meanArray64), sd=sd(meanArray64)), add=TRUE,col = "red")

hist(meanArray256,main = "Distribution of sample mean of sample of size n= 256",xlim = c(1,6),xlab = "Sample means", ylab = "Density",freq = FALSE)
curve(dnorm(x, mean=mean(meanArray256), sd=sd(meanArray256)), add=TRUE,col = "red")
