#F1.8 Intro to Matrices

# Creating matrix by rbind() or row binding
v1 <- c("a","b","c")
v2 <- c("f","g","h")
v3 <- c("k","l","m")

MyMatrix <- rbind(v1,v2,v3)
MyMatrix
MyMatrix[1,3]
MyMatrix[3,]
MyMatrix[,2]

# Assigning row names and column names
rownames(MyMatrix)
colnames(MyMatrix) <- c("Year1","Year2","Year3")
MyMatrix

# Creating matrix by cbind() or column binding
c1 <- seq(20,70,10)
c1
c2 <- c(57,48,38,29,21,14)
MyMatrix2 <- cbind(c1,c2)
MyMatrix2

colnames(MyMatrix2) <- c("Age","LifeExpectancy")

#F1.9 Subsetting a matrix
sm <- MyMatrix2[c(1,6),]
sm
is.matrix(sm)

# Creating a matrix by the matrix function
Losses <- 1:100
Losses
MatrixLosses <- matrix(Losses,10,10)
MatrixLosses
MatrixLosses[10,10]

# Populate a matrix across the columns then next row
MatrixLosses <- matrix(Losses,10,10,byrow=T) #the default is byrow=F
MatrixLosses
