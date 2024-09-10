#### Instructions ####
# We will use this worksheet to get more experience with
# 1. Visualization 
# 2. Inter-quartile range (IQR)
#### #### #### #### #### 

## First load required libraries 
library(openintro)
library(ggplot2)

### Scatter Plot and associations

####
# Positive Association
set.seed(123)
data_association <- data.frame(
  x = rnorm(100, mean = 50, sd = 10),
  y_1 = 2 * x_pos + rnorm(100, mean = 0, sd = 10),
  y_2 = -2 * x_neg + rnorm(100, mean = 0, sd = 10),
  y_3 = rnorm(100, mean = 50, sd = 10)
)


# (Strongly)-linear example (positive since it looks like a line with a positive slope)
ggplot(data=county, map=aes(x=pop2010, y=pop2017)) +
  geom_point()

### Histogram and skewness

# Here are examples of data that is symmteric, skewed-left, and skewed-right.

# Symmetric dataset: Normal distribution

data_histogram <- data.frame(
  symmetric_data <- rnorm(1000, mean = 50, sd = 10),
  left_skewed_data <- (rnorm(1000, mean = 10, sd = 2))^2,
  right_skewed_data <- rexp(1000, rate = 0.1)
) 

### mean, median, inter-quartile range

vec <- c(1,2,3)
