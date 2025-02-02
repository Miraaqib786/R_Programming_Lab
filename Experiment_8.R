#________________________________________________________________________________
# Load necessary libraries
library(ggplot2)
library(dplyr)
# Read the CSV file
sales_data <- read.csv("data.csv")

# Print the first few rows of the dataset
print("First few rows of the dataset:")
head(sales_data)

# Print the structure of the dataset
print("Structure of the dataset:")
str(sales_data)

# Print summary statistics of the dataset
print("Summary statistics of the dataset:")
summary(sales_data)

######################__________EDA____________________#########################

#_______Part II: Perform Explorative Data Analysis (EDA)

# Check for missing values in the dataset
print("Check for missing values:")
colSums(is.na(sales_data))

###########_______________Visualize Data Distribution_________##################

# Histogram for Sales
print(ggplot(sales_data, aes(x = Sales)) +
        geom_histogram(binwidth = 50, fill = "blue", color = "black", alpha = 0.7) +
        ggtitle("Histogram of Sales"))

# Histogram for Quantity
print(ggplot(sales_data, aes(x = Quantity)) +
        geom_histogram(binwidth = 1, fill = "green", color = "black", alpha = 0.7) +
        ggtitle("Histogram of Quantity"))

################___________BoxPlot___________________###########################

# Box plot for Sales by Product
print(ggplot(sales_data, aes(x = Product, y = Sales)) +
        geom_boxplot(fill = "orange", color = "black", alpha = 0.7) +
        ggtitle("Box Plot of Sales by Product"))

# Box plot for Quantity by Region
print(ggplot(sales_data, aes(x = Region, y = Quantity)) +
        geom_boxplot(fill = "purple", color = "black", alpha = 0.7) +
        ggtitle("Box Plot of Quantity by Region"))

#######################____________ Scatter Plot Matrix:________################

# Scatter plot of Sales vs Quantity
print(ggplot(sales_data, aes(x = Quantity, y = Sales)) +
        geom_point(color = "red") +
        ggtitle("Scatter Plot of Sales vs Quantity"))

##################_______________Correlation_____________#######################

# Correlation matrix for numeric columns
numeric_data <- sales_data %>% select(Sales, Quantity)
cor_matrix <- cor(numeric_data, use = "complete.obs")
print("Correlation matrix for numeric columns:")
print(cor_matrix)

# Heatmap of the correlation matrix
print(ggplot(data = as.data.frame(as.table(cor_matrix)), aes(Var1, Var2, fill = Freq)) +
        geom_tile() +
        scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0) +
        theme_minimal() +
        ggtitle("Heatmap of Correlation Matrix"))

##########################__________Summary__________________###################

# Convert Product and Region columns to factors
sales_data$Product <- as.factor(sales_data$Product)
sales_data$Region <- as.factor(sales_data$Region)

# Summary of categorical columns
print("Summary of categorical columns:")
print(summary(sales_data$Region))

print("Summary of categorical columns:")
for(col in names(categorical_data)) {
  print(paste("Summary of", col))
  print(summary(sales_data[[col]]))
}
###########################_________________________############################

