# Notes

rm(list=setdiff(ls(), "hw1_data")) # Remove all except hw1_data



# Question 18

good <- complete.cases(hw1_data)
cleaned <- hw1_data[good, ]
subset1 <- cleaned[c('Ozone', 'Solar.R', 'Temp')]
subset1_2 <- subset(subset1, Ozone > 31, select = c(Ozone, Solar.R, Temp ))
subset1_3 <- subset(subset1, Temp > 90, select = c(Ozone, Solar.R, Temp ))
mean(subset1_3[["Solar.R"]])

# Question 19
subset1 <- hw1_data[c('Temp', 'Month')]
subset1_2 <- subset(subset1, Month == 6, select = c(Temp, Month))
mean(subset1_2[['Temp']])

# Question 20
good <- complete.cases
cleaned <- hw1_data[good, ]
subset1 <- subset(cleaned, Month == 5, select = c(Ozone, Month))
max(subset1[['Ozone']])