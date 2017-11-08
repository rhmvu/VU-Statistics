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

#Side By Side in 3 graphs:
par(mfrow=c(3,1))

means = list(means[[1]],means[[2]],c(), c())
means[[4]][3:4]  = means[[2]][2:3]
means[[4]][1:2] = c(means[[2]][1],0)
means[[3]] = rbind(means[[1]],means[[4]])
rownames(means[[3]]) = c("Type 1","Type 2")
means[[3]]
barplot(means[[3]],names.arg = groupedPerCyl1[,"Cylls"],ylim = c(0,35),col=c("red","darkblue"),width = (0.5),xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "Average(mean) MPG per cyllinders",beside = T,legend = rownames(means[[3]]))

medians = list(medians[[1]],medians[[2]],c(), c())
medians[[4]][3:4]  = medians[[2]][2:3]
medians[[4]][1:2] = c(medians[[2]][1],0)
medians[[3]] = rbind(medians[[1]],medians[[4]])
rownames(medians[[3]]) = c("Type 1","Type 2")
medians[[3]]
barplot(medians[[3]],names.arg = groupedPerCyl1[,"Cylls"],ylim = c(0,35),col=c("red","darkblue"),width = (0.5),xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "Median MPG per cyllinders",beside = T,legend = rownames(medians[[3]]))

sds = list(sds[[1]],sds[[2]],c(), c())
sds[[4]][3:4]  = sds[[2]][2:3]
sds[[4]][1:2] = c(sds[[2]][1],0)
sds[[3]] = rbind(sds[[1]],sds[[4]])
rownames(sds[[3]]) = c("Type 1","Type 2")
sds[[3]]
barplot(sds[[3]],names.arg = groupedPerCyl1[,"Cylls"],ylim = c(0,5),col=c("red","darkblue"),width = (0.5),xlim = c(0,8),ylab = "Miles per Gallon", xlab = "Amount of cyllinders", main = "standard deviation MPG per cyllinders",beside = T,legend = rownames(sds[[3]]))

#boxplots:
par(mfrow=c(1,2))
boxplot(mileage$mpg1, main= "Type 1", ylim = c(10,37))
boxplot(mileage$mpg2, main= "Type 2", ylim = c(10,37))


#Nummeric data:
print("Type 1")
for(i in 1:length(groupedPerCyl1[[1]])){
  print(paste("-Cyllinder ",groupedPerCyl1$Cylls[[i]]))
  print(summary(groupedPerCyl1$MPGs[[i]]))
  print(paste("standard deviation:",sd(groupedPerCyl1$MPGs[[i]])))
}
print("All Cyllinders:")
print(summary(mileage$mpg1))
print(paste("standard deviation:",sd(mileage$mpg1)))

print("Type 2")
for(i in 1:length(groupedPerCyl2[[1]])){
  print(paste("-Cyllinder ",groupedPerCyl2$Cylls[[i]]))
  print(summary(groupedPerCyl2$MPGs[[i]]))
}
print("All Cyllinders:")
print(summary(mileage$mpg2))
print(paste("standard deviation:",sd(mileage$mpg2)))


#median and means amount of cylinders for both types:
mean(mileage$cyl1)
median(mileage$cyl1)
mean(mileage$cyl2)
median(mileage$cyl2)

