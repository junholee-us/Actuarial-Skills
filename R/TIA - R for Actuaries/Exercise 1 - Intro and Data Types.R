#F1.2 R Studio Overview and First Program
print("Hello Actuaries")

#F1.3 Introduction to R Vectors
a <- 5
?c()
a <- c(5)
b <- c(5,3)
LongVector <- c("a","b","c","d","e")
x <- LongVector[3] #In R, index starting 1 not 0
x
y <- LongVector[1:3]
y
z <- LongVector[-1] #return value except for the first element
z

#F1.4 R Data Types

# 1. Integer
AgeAtIncurral <- 45L #L indicates an integer, default is double
typeof(AgeAtIncurral) #check data type

# 2. Double
MortalityRate <- 0.05
MortalityRate
typeof(MortalityRate)

# 3. Character
PatientName <- "John"
PatientName
typeof(PatientName)

# 4. Logical
Smoker <- TRUE #T is also valid
Smoker
typeof(Smoker)

Smoker <- FALSE #F is also valid
Smoker <- !T

# 5. Complex

x <- 1 + 2i
x
typeof(x)
