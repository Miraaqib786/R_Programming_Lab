#####_____________________Operations on Vectors_____________________________####

# Summation, Subtraction, Multiplication, and Division on Vectors
# Define two vectors
vector1 <- c(10, 20, 30, 40, 50)
vector2 <- c(1, 2, 3, 4, 5)

# Summation
sum_result <- vector1 + vector2
print(paste("Summation of two vectors is:", toString(sum_result)))

# Subtraction
sub_result <- vector1 - vector2
print(paste("Subtraction:", toString(sub_result)))

# Multiplication
mul_result <- vector1 * vector2
print(paste("Multiplication:", toString(mul_result)))

# Division
div_result <- vector1 / vector2
print(paste("Division:", toString(div_result)))
#______________________________________________________________
# Multiplication and Division Operations Between Matrices and Vectors

# Define a matrix and a vector
matrix1 <- matrix(1:9, nrow = 3, ncol = 3)
matrix1
vector3 <- c(1, 2, 3)
vector3

# Multiplication of matrix and vector (element-wise)
mul_matrix_vector <- matrix1 * vector3
print("Multiplication (element-wise) of matrix and vector:")
print(mul_matrix_vector)

# Division of matrix and vector (element-wise)
div_matrix_vector <- matrix1 / vector3
print("Division (element-wise) of matrix and vector:")
print(div_matrix_vector)

# Matrix multiplication (dot product) between a matrix and a vector
dot_product <- matrix1 %*% vector3
print("Matrix multiplication (dot product) of matrix and vector:")
print(dot_product)
                  # Output: 30 36 42
#______________________________________________________________________

 rank <- c(34,34,45,45,6,76,76)
 levels <- factor(rank)
 levels 



