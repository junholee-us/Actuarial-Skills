#F1.5 Different ways to create vectors

# Creating vectors and vector operations
IncurralAges <- c(20L,30L,40L,50L,60L)
IncurralAges
is.integer(IncurralAges)

# Sequence
?seq()
IncAges5 <- seq(from=20L,to=70L,by=5L)
IncAges5

IncAges1 <- seq(20L,70L,1L)
IncAges1
typeof(IncAges1)

InterestRates <- seq(0,5,length.out = 5)
InterestRates

# Repetition

ParallelShift <- c(0.1,0.1,0.1,0.1,0.1)
ParallelShift

?rep()
ParallelShift1 <- rep(x=0.1, times=5)
ParallelShift1

ParallelShift2 <- rep(x=c(0.1,0.2), times=5)
ParallelShift2

ParallelShift3 <- rep(x=c(0.1,0.2), each=5)
ParallelShift3

#F1.6 Vector Operations
InterestRates
ParallelShift

NewIntRates <- InterestRates * (1+ParallelShift)
NewIntRates

MaxRate <- max(NewIntRates)
MaxRate

MinRate <- min(NewIntRates)
MinRate

MeanRate <- mean(NewIntRates)
MeanRate

?round()
NewIntRates
RoundedRate <-round(NewIntRates,digits = 1)
RoundedRate
RoundedRate <-round(NewIntRates,1) / 100
RoundedRate
