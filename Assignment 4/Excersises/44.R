#4.4B
observed = c(8,12,15)
expected = c(14,10.5,10.5)

x = 0
for (i in 1:length(observed)){
  x = x+((observed[[i]]-expected[[i]])^2/expected[[i]])
}
print(paste("result = ",x))

#4.4