                     
                ##________Plotting In R: ___________##
________________________________________________________________________________
# Plotting one Point
plot(3,4)

# Plotting many points
plot(c(2,5,3,4,5,), c(5,7,4,5,6,7,8))

# plot between two variables
x <- c(2,4,6,8,10)
y <- c(1,3,5,7,9)
plot(x,y)

# plot in sequence on both sides
plot(1:13)

# plotting a line 
plot(1:10, type = "l" , main = "speed time chart", xlab = "Distance",ylab = "Time", col = "green")

# increasing size of Point
plot(1:10, cex = 1)

# change shape of the point 
plot(1:10, pch = 19,  cex = 1)

# change the width of the line 
plot(1:10, type="l", lwd=1)

# change type of line ( lty -> 0 to 6)
plot(1:10, type="l", lwd=5, lty=3)

# Multiple Line graph 
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)

plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")
#############______________Compare Plots_________________#############

# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2)

############################________Pie Chart _______________##############

# Create a vector of pies
x <- c(10,20,30,40)

# Display the pie chart
pie(x)

# Start with angle 
# Display the pie chart and start the first pie at 90 degrees
pie(x, init.angle = 90)

# Add labels and headers
# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Display the pie chart with labels
pie(x, label = mylabel, main = "Fruits")

# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")

# Display the pie chart with colors
pie(x, label = mylabel, main = "Fruits", col = colors)

####################____________Add Legend_________#####################
# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")

# Display the pie chart with colors
pie(x, label = mylabel, main = "Pie Chart", col = colors)

# Display the explanation box
legend("bottomright", mylabel, fill = colors)

##########################__________Bar Plot___________________##############
# x-axis values
x <- c("A", "B", "C", "D")

# y-axis values
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, col = "red")
#######################______________Change Bar Texture/density_______######

######################_______________Add Width for Each bar_________##########
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x, width = c(1,2,3,4))

# Reverse bars horizontally
barplot(y, names.arg = x, horiz = TRUE)
_______________________________________________________________________________