#F3.1 Loading data into R to create a data frame

AutoSett <- read.csv("AutoSettlements.csv")

#-- Look at the data from a high level --#
nrow(AutoSett)
ncol(AutoSett)
head(AutoSett)
head(AutoSett, n=10)
tail(AutoSett, n=10)
str(AutoSett) #Stands for structure
summary(AutoSett)

#F3.2 Subsetting and filtering your data frame
AutoSett[1:10,]
AutoSett[c(1,500),] #Only rows 1 and 500

#-- Filtering your data frame --#
AutoSett[3,7]
AutoSett[3,"SETTLEMENT"]

# Chooing a row whose SETTNUM is 21
AutoSett$SETTNUM == 21 #Returns a logical vector
filter <- AutoSett$SETTNUM == 21
AutoSett[filter,]

#Or apply directly
AutoSett[AutoSett$SETTNUM == 21,]

#F3.3. Adding and deleting columns to your data frame

head(AutoSett)
AutoSett$AgeMonths = AutoSett$AGE * 12
head(AutoSett)

AutoSett$AgeMonths <- NULL
head(AutoSett)