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

### (b) Compute the standard deviation by using the formula and compare the result with sd(my_vec)
sd(my_vec)

### (c) Make the box plot of my_vec: the following line creates a data frame consisting of the variable my_vec
my_data <- data.frame(my_vec)
ggplot(data=my_data, aes(x=my_vec)) + 
  geom_<>

### (d) Does this data have any outliers?
  
## Question 2
## The following lines will update the max in `my_vec` to 61.
  
my_vec2 <- my_vec
my_vec2[7] <- 61
my_vec2

### (a) Make the box plot of my_vec2:
my_data2 <- data.frame(my_vec2)
ggplot(data=my_data, aes(x=my_vec2)) + 
  geom_<>

### (b) Does this data have any outliers?

## Question 3
  
### (a) Which data set has bigger mean? Use R to verify your reasoning
  
### (b) Which data set has bigger median? Use R to verify your reasoning
  
### (c) A typical observation in my_var2 is best represented by the 
### mean or median?

## Be sure to share your answers and upload your file to Canvas