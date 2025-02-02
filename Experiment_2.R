###### Basics of R Programming #########
#________________________________________________________________________________
# Data Types in R- 
# Numeric data type
num_var <- 3.14
num2 = 34
"hello" -> greet
greet
num_var

# Integer data type
int_var <- 42L
int_var

# Character data type
char_var <- "Hello, R!"
char_var

# Logical data type
log_var <- TRUE
log_var

x <-  5 == 7
x

# Complex data type
complex_var <- 1 + 2i
complex_var

# Variables in R

# Assigning values to variables
radius <- 5
pi_value <- 3.14159
# Calculate area of a circle
area <- pi_value * radius^2
# Print the result
print(paste("the area of a circe is: ",area))
#_______________________________________________________________________________
# Arithmetic operators
# addition(+)
  a <- 3
  b <- 5
  c <- a + b
  c

#subtraction(-)
  s <- 7 - 2
  s

#multiplication(*)
  m <- 4 * 6
  m

#division(/)
  d <- 10 / 2
  d
# Exponentiation (^): Raises x to the power of y.
  e <- 2 ^ 3 
  e
# Modulus (%%): Returns the remainder of x divided by y.
  mod <- 10 %% 3
  mod

# Integer Division (%/%): Returns the integer part of x divided by y.
  i = 17 %/% 3
  i
#_______________________________________________________________________________
# Relational operators(<,>,==):

# Greater_than
x <- 5 > 3
x

shiva = 85
kuthin = 80

result <- kuthin > shiva 
result

# less_than
y <- 7 < 2
y

# equal_to
z <- 4 == 4
z

# Not Equal (!=): Checks if x is not equal to y.
n <- 4 != 5
n

# Greater Than or Equal To (>=): Checks if x is greater than or equal to y.
v = 5>= 12
v

# Less Than or Equal To (<=): Checks if x is less than or equal to y.
t = 5 <=12
t
# ____________________________________________________________________________
# R Logical Operators
# Logical operators are used to combine conditional statements.

# Element-wise Logical AND (&): Returns TRUE if both elements are TRUE.
x <- TRUE
y <- FALSE
x & y  

# Logical AND (&&): Returns TRUE if both statements are TRUE.
a <- 5
b <- 10
a > 3 && b < 15 

# Element-wise Logical OR (|): Returns TRUE if at least one element is TRUE.
grades <- c(80, 73, 90)
passed <- grades >= 75 | grades < 70
passed  

# Logical OR (||): Returns TRUE if at least one statement is TRUE.
age <- 25
married <- FALSE
age > 21 || married  

# Logical NOT (!): Reverses the logical state of its argument.
z <- FALSE
!z
#_______________________________________________________________________________
# Assignment Operators
# Assignment operators are used to assign values to variables.

# Standard Assignment (<- or =): Assigns a value to a variable.
my_var <- 4
my_var

# Double Arrow Assignment (<<-): Assigns a value to a variable in the parent environment (used in functions for modifying variables in the global environment).
my_var <<- 3
my_var

# Rightwards Arrow Assignment (->): Assigns a value to a variable in the opposite direction.
3 -> my_var
my_var

# Double Rightwards Arrow Assignment (->>): Similar to <<-, but assigns a value to a variable in the parent environment.
3 ->> my_var
my_var
#_______________________________________________________________________________
# Functions In R:

# function definition
square <- function(x) {
  return(x^2) # what function returns
}

# function call
result <- square(5)
print(result) 

average(34,45)

Y

# output :25
#________________________________________________________________________________
# Control structures in R:

# Example of if-else statement
x <- 10
if (x > 5) {
  print("x is greater than 5")
} else {
  print("x is not greater than 5")
}
   # Output: "x is greater than 5"

# Example of for loop
for (i in 1:5) {
  print(i)
}              # Output: 1 2 3 4 5
     
# Example of while loop
i <- 1
while (i <= 5) {
  print(i)
  i <- i + 1
}             # Output: 1 2 3 4 5

#_______________________________________________________________________________
# Data Structures in R:

# Example of vector
num_vector <- c(1, 2, 3, 4, 5)
num_vector # output: 1 2 3 4 5

fruits <- c("apple", "banana", "cherry")
fruits# output: "apple"  "banana" "cherry"

# Example of list
my_list <- list("John", 30, TRUE)
my_list

# Example of matrix
mat <- matrix(1:6, nrow = 2, ncol = 3)
mat

# Example of data frame
df <- data.frame(
  name = c("John", "Jane", "Doe"),
  age = c(25, 30, 35),
  married = c(TRUE, FALSE, TRUE)
)

df

View(df)
#________________________________________________________________________________

marks <- c(34,45,56)
df2 <- cbind(df,marks)
View(df2)
















