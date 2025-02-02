
###______________________________Vector Subsetting______________________########
# Define a vector
my_vector <- c(10, 20, 30, 40, 50)
my_vector

# Subset the second element
second_element <- my_vector[2]
print(paste("Second element:", second_element))

# Subset elements from the second to the fourth
subset_elements <- my_vector[2:4]
print(paste("Elements from second to fourth:",toString(subset_elements)))

# Subset elements based on a condition
condition_subset <- my_vector[my_vector > 30]
print(paste("Elements greater than 30:", toString(condition_subset)))

#___________________________________________________________________
# Matrix Subsetting:

# Define a 3x3 matrix
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)
my_matrix

rdata <- c(45,356,57,98,98,56,56,7,4)
A <- matrix(rdata, nrow = 3)
A

# Subset the element in the second row and third column
element <- my_matrix[2, 3]
print(paste("Element in second row and third column:", element))

# Subset the entire second row
second_row <- my_matrix[2, ]
print("Entire second row:")
print(second_row)

# Subset the entire third column
third_column <- my_matrix[, 3]
print("Entire third column:")
print(third_column)

# Subset a 2x2 matrix from the original matrix
subset_matrix <- my_matrix[1:2, 1:2]
print("2x2 subset of the original matrix:")
print(subset_matrix)

#___________________________________________________________________
# Create an Array of 3x3 Matrices

# Define the data for the array
data <- 1:27
data

my
# Print the array
print("3x3x3 Array:")
print(my_array)

######_____________________________________________________________________#####
























