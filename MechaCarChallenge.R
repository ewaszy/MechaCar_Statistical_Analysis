#Deliverable 1 
#3 Use the library() function to load the dplyr package.
library(dplyr)
library(tidyverse)

#4 Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
head(MechaCar_mpg)

#5 Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you #created in Step 4 as the data parameter.
MechaCar_lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

#6 Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
MechaCar_lm
print("#######################################################")
print("#  Linear Regression Model Summary for MechaCar data  #")
print("#######################################################")
summary(MechaCar_lm)