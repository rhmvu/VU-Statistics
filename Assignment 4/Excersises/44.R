#4.4B
observed = c(8,12,15)
expected = c(14,10.5,10.5)

x = 0
for (i in 1:length(observed)){
  x = x+((observed[[i]]-expected[[i]])^2/expected[[i]])
}
print(paste("result = ",x))

#4.4D
Omen = c(8,12,15)
Owomen = c(15,8,4)
totalO = rbind(Omen,Owomen)
results = matrix(totalO,ncol = 3,byrow=F)


Emen = c(12.984,11.290,10.726)
Ewomen = c(10.016,8.709,8.274)
totalE = rbind(Emen,Ewomen)
Expected = matrix(totalE,ncol = 3,byrow=F)

x = 0
for (j in 1:3){
  for (i in 1:2) {
    x = x+((results[i,j]-Expected[i,j])^2/Expected[i,j])
  }
 
}
print(paste("result = ",x))

#4.4F
matrixDouble = matrix(c(8,27,15,12),nrow = 2,byrow = F)
fisher.test(matrixDouble,alt="less")

