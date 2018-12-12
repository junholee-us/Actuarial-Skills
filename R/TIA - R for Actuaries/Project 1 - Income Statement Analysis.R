# Technical Skills Course – R Actuarial Project 1

# Completed by Junho Lee, Prepared by TIA

# Introduction: The insurance company, CoverYou, has experienced a rough past three years. 
# They have had premiums of $1000, $800, $710 in 2013, 2014, and 2015, in that order. 
# They have had claims of $1100, $790, and $650 in those same years, in that same order.

# Do the following tasks in R using an R script:

# Task 1: Create two vectors. One vector for the premium and one vector for the claims.

premium <- c(1000,800,710)
claim <- c(1100,790,650)

# Task 2: Create a new vector called LossRatio that is defined as Claims / Premium.

lossRatio <- claim/premium

# Task 3: Calculate the mean premium, mean claims, and mean Loss Ratio over the three year time period.
meanPremium <- mean(premium)
meanClaim <- mean(claim)
meanLossRatio <- mean(lossRatio)

# Task 4: Determine which year(s) had a higher Loss Ratio vs. the mean Loss Ratio over the three year time period.

higherLossRatio <- lossRatio > meanLossRatio
higherLossRatio

# Task 5: Create the following matrix in R and populate with the correct values. 
# Be sure to rename the columns appropriately to 2013, 2014, and 2015.
# ///////// 2013  | 2014  | 2015
# Premium
# Claims
# LossRatio

year <- c("2013","2014","2015")
incomeStatement <- rbind(premium,claim,lossRatio)
colnames(incomeStatement) <- c(year)
incomeStatement
