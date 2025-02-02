#########_____Data Visualization in R_________

#  data

categories <- c("A", "B", "C", "D")
values <- c(5, 10, 15, 20)

# Create bar chart
barplot(values,names.args= categories, col = "blue", main = "Bar Chart", xlab = "Category", ylab = "Values")
__________________________________________________________
# data
years <- c(2018, 2019, 2020, 2021)
revenue <- c(100, 150, 130, 170)

# Create line chart
plot(years, revenue, type = "b", col = "red", main = "Line Chart", xlab = "Years", ylab = "Revenue")
_______________________________________________________
# data
x <- c(1, 2, 3, 4, 5, 40)
y <- c(2,4,6,7,8,9)
# Create scatter plot
plot(x,y,main = "Scatter Plot ", xlab = "X-axis", ylab = "Y-axis", pch = 1, col = "green")
__________________________________________________________

# Sample data
data <- c(1,1,1,1,1,1,1,1, 2, 2, 3, 3, 3, 4, 4, 5, 5)

# Create histogram
hist(data, col = "purple", main = "Histogram Example", xlab = "Values", ylab = "Frequency")
_________________________________________________________
# Sample data
data <- c(5, 7, 9, 12, 15, 18, 21,40)

# Create boxplot
boxplot(data, main = "Boxplot Example", ylab = "Values", col = "orange")
________________________________________________________
# Sample data
slices <- c(10, 20, 30, 40)
labels <- c("A", "B", "C", "D")



pie(slices, labels = labels, main = "Pie chart", col = rainbow(4))

_______________________________________________________
# Sample data
matrix_data <- matrix(rnorm(25), nrow = 5, ncol = 5)
matrix_data
# Create heatmap
heatmap(matrix_data, main = "Heatmap Example", col = heat.colors(256))

______________________________________________________
# Sample data
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 5, 7, 8)
z <- c(10, 20, 30, 40, 50)  # bubble size

# Create bubble chart
symbols(x, y, circles = z, inches = 0.5, fg = "white", bg = "blue", main = "Bubble Chart", xlab = "X", ylab = "Y")
___________________________________________________________
# Sample data
data <- rnorm(100)

# Create density plot
plot(density(data), main = "Density Plot Example", col = "darkgreen", lwd = 2)
__________________________________________________________
# Install ggplot2 if not installed
# install.packages("ggplot2")
_________________________________________________________

library(ggplot2)

# Sample data
data <- data.frame(
  group = factor(rep(1:2, each = 200)),
  value = c(rnorm(200), rnorm(200, mean = 2))
)

________________________________________________________
library(ggplot2)

# Sample data
data <- data.frame(Category = c("A", "B", "C"), Values = c(3, 7, 9))

# Create bar chart
ggplot(data, aes(x = Category, y = Values)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  ggtitle("Barplot with ggplot2")
________________________________________________________
# Install plotrix if not installed
# install.packages("plotrix")

# Load the plotrix package
library(plotrix)

# Sample data
slices <- c(10, 20, 30, 40)
labels <- c("A", "B", "C", "D")

# Create 3D pie chart
pie3D(slices, labels = labels, explode = 0.1, main = "3D Pie Chart Example", col = rainbow(length(slices)))
______________________________________________________
# Sample data
slices <- c(10, 20, 30, 40)
labels <- c("A", "B", "C", "D")

# Calculate percentages
percentages <- round(slices / sum(slices) * 100)

# Create labels with percentages
labels_with_percent <- paste(labels, percentages, "%", sep = " ")

# Create pie chart
pie(slices, labels = labels_with_percent, main = "Pie Chart with Percentage", col = rainbow(length(slices)))
__________________________________________________________
# Install plotrix if not installed
# install.packages("plotrix")

# Load the plotrix package
library(plotrix)
dev.new(width = 10, height = 7) 
# Sample data
slices <- c(10, 20, 30, 40)
labels <- c("A", "B", "C", "D")

# Calculate percentages
percentages <- round(slices / sum(slices) * 100)

# Create labels with percentages
labels_with_percent <- paste(labels, percentages, "%", sep = " ")

# Create 3D pie chart with percentage labels
pie3D(slices, labels = labels_with_percent, explode = 0.1, main = "3D Pie Chart with Percentage", col = rainbow(length(slices)))

dev.off()
________________________________________________________