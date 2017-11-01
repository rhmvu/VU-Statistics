" Exercise 0.5 Data
Data can come in several ways. They can come as values saved in a file, as a file containing
R-code for creating a data object (vector, matrix, list) in R, or saved as R-data objects in a
working directory. Download from Canvas the files lepton and sample1, and the workspace file
Ass0.RData into one of your own folders.

a. The file lepton in Canvas contains the R-code for creating in R the list lepton with 5
components. Create this list. You could use source() for this. Next, extract the fourth
component of the list. Finally, extract (with a single command) the second element of the
first component of the list.

b. Use the R-function scan to create a vector with the data in the file sample1. Transform this
vector into a matrix with four rows and five columns. Then use the R-function dimnames,
to assign to the rows and columns of this matrix the names a, b, c, d, and I, II, III, IV, V,
respectively.
Note. You can also use as.matrix(read.table(. . .)) to read in these data as a matrix in
one go.

4c. Open the workspace file Ass0.RData in the Workspace window. It contains an object
school. Now type the name of this object in the Script or the Console window to see what
it contains."

source("lepton.txt")
lepton[4]
lepton$Bmu[2]

data = scan("sample1.txt")
m = matrix(data, nrow = 4,ncol = 5)
dimnames(m) = list( 
c("a", "b","c","d"),         # row names 
c("I", "II", "III","IV","V")) # column names 

#Before executing the following statemetn: open Ass0.RData first in the environment
school

