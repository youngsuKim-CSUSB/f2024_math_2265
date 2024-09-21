## In-class exercise 
## Make a group of 2-3 people and work these are together
## It is okay that one person writes the code and share it with other group members (e.g. via email)
## Your work is evaluated mainly my completion and partipation 

## load the packages 
library("openintro")
library("ggplot2")

## Question 1
my_vec <- c( 15, 8, 7, 2, 19, 3, 11)
my_vec <- sort(my_vec)
my_vec

### (a) Compute the mean and median
mean(my_vec)
median(my_vec)

### (b) Compute the standard deviation by using the formula and compare the result with sd(my_vec)
sd(my_vec)
sqrt(sum((my_vec - mean(my_vec))^2)/(length(my_vec)-1))

### (c) Make the box plot of my_vec: the following line creates a data frame consisting of the variable my_vec
my_data <- data.frame(my_vec)
ggplot(data=my_data, aes(x=my_vec)) + 
  geom_boxplot()

### (d) Does this data have any outliers? No
  
## Question 2
## The following lines will update the max in `my_vec` to 61.
  
my_vec2 <- my_vec
my_vec2[7] <- 61
my_vec2

### (a) Make the box plot of my_vec2:
my_data2 <- data.frame(my_vec2)
ggplot(data=my_data, aes(x=my_vec2)) + 
  geom_boxplot()

### (b) Does this data have any outliers? Yes

## Question 3
  
### (a) Which data set has bigger mean? Use R to verify your reasoning
my_vec2  

### (b) Which data set has bigger median? Use R to verify your reasoning
The same
  
### (c) A typical observation in my_vec2 is best represented by the 
### mean or median?
median

## Be sure to share your answers and upload your file to Canvas