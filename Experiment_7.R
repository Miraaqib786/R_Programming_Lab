# Implement Different Data Structures in R (Vectors, Lists, Data Frames)
#______________________________________________________________________
# Part I: Vectors
# Vectors
# Create a numeric vector
v1 <- c(1, 2, 3, 4, 5, 6)
print("Numeric Vector:")
print(v1)

# Create a character vector
fruits <- c("apple", "banana", "cherry", "oranges")
print("Character Vector:")
print(fruits)

# Create a logical vector
logical_vector <- c(TRUE, FALSE, TRUE, FALSE)
print("Logical Vector:")
print(logical_vector)
#______________________________________________________________________
#Part II: Lists
#Lists
# Create a list with different types of elements
  my_list <- list(
    name = "John Doe",
    age = 30,
    scores = c(90, 85, 88),
    is_student = FALSE
  )
  print("List:")
  print(my_list)

# Access elements in the list
print("Name:")
print(my_list$name)

print("Age:")
print(my_list$age)

print("Scores:")
print(my_list$scores)

print("Is Student:")
print(my_list$is_student)
#____________________________________________________________________
# Part III: Data Frames
# Data Frames
Name <- c("suhail","Vamsi","Raj","Ganesh","Shiva")
Branch <- c("cse", "Civil", "csds"," AIML","EEE")
Roll_no <- c(81,82,67,68,34)
age <- c(12,23,34,45,67)
user_name<- c("abc@", "xcv@", "dfg@","djk@", "ref@")

student <- data.frame(Name,Branch,Roll_no,age,user_name)

View(student)

student$nbacks <- c(2,4,5,6,7)
rank <- c(5,3,2,1,4)
df1 <- cbind(student,rank)

# Create a data frame
my_data_frame <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(24, 30, 22),
  score = c(85, 90, 88)
)

print("Data Frame:")
print(my_data_frame)

# Access columns in the data frame
print("Names:")
print(my_data_frame$name)

print("Ages:")
print(my_data_frame$age)

print("Scores:")
print(my_data_frame$score)

# Add a new column to the data frame
my_data_frame$passed <- c(TRUE, TRUE, FALSE)
print("Data Frame after adding a new column:")
print(my_data_frame)
#____________________________________________________________________
