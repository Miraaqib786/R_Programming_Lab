#______________________________________________________________________________________
# Create a speed_distance.csv Dataset-

# Load necessary library
library(dplyr)

# Set seed for reproducibility
set.seed(123)

# Generate 1000 records for Speed and Distance
speed <- rnorm(1000, mean = 70, sd = 10)  # Normal distribution for speed
distance <- rnorm(1000, mean = 150, sd = 30)  # Normal distribution for distance

# Create a data frame
data <- data.frame(Speed = speed, Distance = distance)

# Write the data frame to a CSV file
write.csv(data, "spddd.csv", row.names = FALSE)

#______________________________________________________________________________________
# Part II: Drawing Plots

# Read the CSV file
df <- read.csv("speed_distance.csv")
View(df)

# Draw Box Plots
# Box plot for Speed
boxplot(df$Speed, main = "Box Plot of Speed", xlab = "Speed", ylab = "Values")

# Box plot for Distance
boxplot(data$Distance, main = "Box Plot of Distance", xlab = "Distance", ylab = "Values")

# Draw Histogram
# Histogram for Speed
hist(data$Speed, main = "Histogram of Speed", xlab = "Speed",
     ylab = "Frequency", col = "lightblue", border = "black")

# Histogram for Distance
hist(data$Distance, main = "Histogram of Distance", xlab = "Distance",
     ylab = "Frequency", col = "lightgreen", border = "black")

# Draw Line Graph
# Line graph for Speed
plot(data$Speed, type = "l", col = "blue", main = "Line Graph of Speed",
     xlab = "Index", ylab = "Speed")

# Line graph for Distance
plot(data$Distance, type = "l", col = "green", main = "Line Graph of Distance",
     xlab = "Index", ylab = "Distance")

# Draw Multiple Line Graphs
# Multiple line graphs for Speed and Distance
plot(data$Speed, type = "l", col = "blue", 
     main = "Multiple Line Graphs of Speed and Distance", xlab = "Index", ylab = "Values")
lines(data$Distance, col = "green")
legend("topright", legend = c("Speed", "Distance"), col = c("blue", "green"), lty = 1)

# Draw Scatter Plot
# Scatter plot for Speed vs Distance
plot(data$Speed, data$Distance, main = "Scatter Plot of Speed vs Distance",
     xlab = "Speed", ylab = "Distance", col = "purple", pch = 19)

#______________________________________________________________________________________