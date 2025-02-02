#_______________________________________________________________________________
# Part I: Drawing a Pie Chart
install.packages('plotrix')
install.packages('ggplot2')

# Load necessary libraries
library(ggplot2)
library(plotrix)
library(datasets)

# Load the mtcars dataset
df <- mtcars
View(df)
df$cyl

View(cyl_data)

# Calculate percentages for the pie chart
cyl_data$percentage <- round(cyl_data$count / sum(cyl_data$count) * 100, 1)
cyl_data$label <- paste(cyl_data$cylinders, "cyl:", cyl_data$percentage, "%")

# Part I: Pie Chart
ggplot(cyl_data, aes(x = "", y = count, fill = factor(cylinders))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +f
  geom_text(aes(label = label), position = position_stack(vjust = 0.5)) +
  ggtitle("Pie Chart of Cars by Number of Cylinders")

# Print the pie chart
print(pie_chart)

#_______________________________________________________________________________

# Part II: Drawing a 3D Pie Chart
slices <- cyl_data$count
labels <- cyl_data$label

# Draw 3D pie chart

pie3D(slices, labels = labels, explode = 0.1,
      main = "3D Pie Chart of Cars by Number of Cylinders")
#_______________________________________________________________________________

# Part III: Bar Chart with Legend
bar_chart <- ggplot(cyl_data, aes(x = factor(cylinders),
  y = count, fill = factor(cylinders))) +
  geom_bar(stat = "identity") +
  scale_fill_discrete(name = "Cylinders") +
  ggtitle("Bar Chart of Cars by Number of Cylinders")

# Print the bar chart
print(bar_chart)

#####___________________________________________________________________________












