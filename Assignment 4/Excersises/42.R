observed = c(387,329,366,344,336,313,313,503,421,434,398,371)
expected = c()
sum(observed)/length(observed)

x = 0
for (i in 1:length(observed)){
  expected[[i]] = sum(observed)/length(observed)
  x = x+((observed[[i]]-expected[[i]])^2/expected[[i]])
}
print(paste("result = ",x))