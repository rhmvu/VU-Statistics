"a. Create a vector x2 consisting of the sequence of numbers between 5 and 13 with step size
0.3. Create a matrix m with nine rows and three columns in which the 27 numbers in x2
are ordered column wise.
b. Extract the element on the fifth row and in the first column of m.
c. Extract the second column of m.
d. Compute the mean value of the numbers in m.
e. Compute the mean value of each column of m by using the R-function apply."

x2 = seq(5,13,0.3)
m=matrix(sort(x2),nrow=9,ncol =3)
m[5,1]
m[,2]
mean(as.array(m))
apply(m,2,mean)

