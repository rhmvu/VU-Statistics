pAlice = mean(Alice>3.75)
pBob = mean(Bob>3.75)
pAlice
pBob

pooledSampleP = (sum(Alice>3.75) + sum(Bob>3.75))/(length(Alice)+length(Bob))
pooledSampleP