# Deliverable 1 
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


#Deliverable 2
#2 Import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
head(Suspension_Coil)

#3 Create a total_summary data frame using the summarize() function to get the mean, median, variance, and standard #deviation of the suspension coil's PSI column.
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 
total_summary

#4 Creates a lot_summary data frame using the group_by() and the summarize() functions to group each manufacturing lot by #the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create lot summary table
lot_summary

