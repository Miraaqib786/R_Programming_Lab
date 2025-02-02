
####_______Experiment 9: Linear Regression and Multi-linear Regression in R_______####

# Load necessary library
library(ggplot2)

# Create the data frame without special characters in column names
sales_data <- data.frame(
  Sales = c(200000, 250000, 300000, 350000, 400000),
  Marketing_Spend = c(50000, 70000, 100000, 120000, 150000),
  RnD_Spend = c(30000, 40000, 60000, 80000, 90000),
  Administration_Spend = c(40000, 45000, 60000, 70000, 80000)
)

# Save the data frame as a CSV file
write.csv(sales_data, "sales_performance.csv", row.names = FALSE)


#################_____________________Loading CSV Data ___________###############

# Read the CSV file into a data frame
data <- read.csv("sales_performance.csv")

# Rename columns to ensure there are no special characters
colnames(data) <- c("Sales", "Marketing_Spend", "RnD_Spend", "Administration_Spend")

# Display the first few rows of the data
print("First few rows of the dataset:")
head(data)

################______________Perform Linear Regression____________#############

# Perform linear regression
linear_model <- lm(Sales ~ Marketing_Spend, data = data)

# Display the summary of the linear regression model
print("Summary of the linear regression model:")
summary(linear_model)

# Set plot margins to avoid "figure margins too large" error
par(mar = c(5, 4, 4, 2) + 0.1)

# Plot the data and the regression line
plot(data$Marketing_Spend, data$Sales, main = "Linear Regression: Sales vs. Marketing Spend",
     xlab = "Marketing Spend", ylab = "Sales", pch = 19, col = "blue")
abline(linear_model, col = "red", lwd = 2)

######_________________Perform Multiple Linear Regression___________#############

# Perform multiple linear regression
multi_linear_model <- lm(Sales ~ Marketing_Spend + RnD_Spend + Administration_Spend, data = data)

# Display the summary of the multiple linear regression model
print("Summary of the multiple linear regression model:")
summary(multi_linear_model)

#######################____________Predicting Sales_________####################

# New data for prediction
new_data <- data.frame(Marketing_Spend = 130000, RnD_Spend = 85000, Administration_Spend = 75000)

# Predict sales using the multiple linear regression model
predicted_sales <- predict(multi_linear_model, new_data)

# Display the predicted sales
print(paste("Predicted Sales:",predicted_sales))

#_______________________________End_________________________________________####