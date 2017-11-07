source("mileage.txt")
par(mfrow=c(3,2))

means = list(c(),c())
medians = list(c(),c())
sds = list(c(),c())

groupedPerCyl1 =aggregate(mileage$mpg1~mileage$cyl1,FUN=c)
names(groupedPerCyl1) = c("Cylls", "MPGs")


  for(j in 1:length(groupedPerCyl1[,"Cylls"])){
       means[[1]][j] = mean(groupedPerCyl1[[j,"MPGs"]])
       medians[[1]][j] = median(groupedPerCyl1[[j,"MPGs"]])
       sds[[1]][j] = sd(groupedPerCyl1[[j,"MPGs"]])
}

groupedPerCyl2 =aggregate(mileage$mpg2~mileage$cyl2,FUN=c)
names(groupedPerCyl2) = c("Cylls", "MPGs")

for(j in 1:length(groupedPerCyl2[,"Cylls"])){
  means[[2]][j] = mean(groupedPerCyl2[[j,"MPGs"]])
  medians[[2]][j] = median(groupedPerCyl2[[j,"MPGs"]])
  sds[[2]][j] = sd(groupedPerCyl2[[j,"MPGs"]])

}

barplot(means[[1]],names.arg = groupedPerCyl1[,"Cylls"],ylim = c(0,35),col=c("red"),width = 1,xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "Type1: Average(mean) MPG per cyllinders")
barplot(means[[2]],names.arg = groupedPerCyl2[,"Cylls"],ylim = c(0,35),col=c("darkblue"),width = 1,xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "Type2: Average(mean) MPG per cyllinders")
barplot(medians[[1]],names.arg = groupedPerCyl1[,"Cylls"],ylim = c(0,35),col=c("red"),width = 1,xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "Type1: Median MPG per cyllinders")
barplot(medians[[2]],names.arg = groupedPerCyl2[,"Cylls"],ylim = c(0,35),col=c("darkblue"),width = 1,xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "Type2: Median MPG per cyllinders")
barplot(sds[[1]],names.arg = groupedPerCyl1[,"Cylls"],ylim = c(0,5),col=c("red"),width = 1,xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "Type1: standard deviation MPG per cyllinders")
barplot(sds[[2]],names.arg = groupedPerCyl2[,"Cylls"],ylim = c(0,5),col=c("darkblue"),width = 1,xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "Type2: standard deviation MPG per cyllinders")

#extra stacked:
#cylls = c(groupedPerCyl2[,"Cylls"])+c(groupedPerCyl1[,"Cylls"])
#groupedPerCyl1[,"Cylls"]
#data1 = cbind(means[[1]],groupedPerCyl1[,"Cylls"])
#data2 = cbind(means[[2]],groupedPerCyl2[,"Cylls"])
#means[[3]] = cbind(data1,data2)

#barplot(means[[2]],names.arg = groupedPerCyl2[,"Cylls"],ylim = c(0,35),col=c("red","darkblue"),width = 1,xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "Average(mean) MPG per cyllinders")
#barplot(medians[[2]],names.arg = groupedPerCyl2[,"Cylls"],ylim = c(0,35),col=c("red","darkblue"),width = 1,xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "Median MPG per cyllinders")
#barplot(sds[[2]],names.arg = groupedPerCyl2[,"Cylls"],ylim = c(0,5),col=c("red","darkblue"),width = 1,xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "standard deviation MPG per cyllinders")
#Nummeric data:
print("Type 1")
for(i in 1:length(groupedPerCyl1[[1]])){
  print(paste("-Cyllinder ",groupedPerCyl1$Cylls[[i]]))
  print(summary(groupedPerCyl1$MPGs[[i]]))
}
print("All Cyllinders:")
print(summary(mileage$mpg1))

print("Type 2")
for(i in 1:length(groupedPerCyl2[[1]])){
  print(paste("-Cyllinder ",groupedPerCyl2$Cylls[[i]]))
  print(summary(groupedPerCyl2$MPGs[[i]]))
}
print("All Cyllinders:")
print(summary(mileage$mpg2))



length(groupedPerCyl1[[1]])
i = c(1)
summary(groupedPerCyl1$MPGs[[i]])
i = c(2)
summary(groupedPerCyl1$MPGs[[i]])
i = c(2)
summary(groupedPerCyl1$MPGs[[i]])


groupedPerCyl1$MPGs[[1]]
summary(groupedPerCyl1$MPGs[[1]])


