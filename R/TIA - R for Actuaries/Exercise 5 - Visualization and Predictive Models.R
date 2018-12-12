#F3.4 Visualizing your data with GGPLOT2
AutoSett <- read.csv("AutoSettlements.csv")

#install.packages("ggplot2")

library(ggplot2) #load the package
str(AutoSett)

qplot(data=AutoSett, x=SETTLEMENT) #histogram
qplot(data=AutoSett, x=AGE, y=SETTLEMENT) #Scatterplot
qplot(data=AutoSett, x=AGE, y=SETTLEMENT, size=I(10)) #Makes dots bigger
qplot(data=AutoSett, x=AGE, y=SETTLEMENT, size=I(10), color=I("blue"))
qplot(data=AutoSett, x=AGE, y=SETTLEMENT, size=I(3), color=GENDER)
qplot(data=AutoSett, x=AGE, y=SETTLEMENT, size=I(3), color=SEATBELT)
qplot(data=AutoSett, x=AGE, y=SETTLEMENT, size=I(3), color=LEGAL)
qplot(data=AutoSett, x=AGE, y=SETTLEMENT, size=I(3), color=Occupation)

#F3.5 Predictive Models in R

#Simple linear regression

?lm
MyPredModel <- lm(SETTLEMENT ~ LEGAL, AutoSett)
MyPredModel
summary(MyPredModel)

MyPredModel2 <- lm(SETTLEMENT ~ LEGAL + Occupation + SEATBELT + AGE, AutoSett)
MyPredModel2
summary(MyPredModel2)

?predict()

AutoSett$Predict <- predict(MyPredModel2, newdata = AutoSett)
AutoSett$AE <- AutoSett$SETTLEMENT - AutoSett$Predict
head(AutoSett)
