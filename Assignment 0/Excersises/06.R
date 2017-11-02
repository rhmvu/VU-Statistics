#a
s=scan("sample1.txt")
par(mfrow=c(1,3))
hist(s,probability = T,main = "plot of Sample1")

#b
y = function(x){
  x^4
}
extra = function(x){
  5*x+2
}
x=seq(0,2,length = 30)
plot(x,y(x), xlab=
       "x",ylab="x^4 (red) and 5x+2 (blue)", main="Plot of X against x^4(Red) and 5x+2(Blue)",type="l",
     col="red", lty=2)
points(x,extra(x),col = "blue",type="l",lty=2)
#c

#is.numeric(school): Checks if the object school has nummeric elements
#table(school): Creates a table from the elements in the school object
#barplot(table(school):Creates a bar plot with vertical or horizontal bars from the table created from the school object.
#col=c("blue","green", "black","yellow")): Creates a vector c from the elements "blue","green", "black","yellow"

#d
proportions = c(0.37, 0.17, 0.28, 0.07, 0.06, 0.05)
flavours = c("Pear","Cheesecake", "Chocolate", "Almond", "Raspberry","Other")
pie(proportions, labels = flavours, main="Pie Chart of Pie flavours")