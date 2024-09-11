#### Instructions ####
# We will use this worksheet to get more experience with
# 1. Visualization 
# 2. Inter-quartile range (IQR)
#### #### #### #### #### 

## First load required libraries 
library(openintro)
library(ggplot2)

### Scatter plot and associations

#### data set
set.seed(123)
x <- rnorm(100, mean = 50, sd = 10)
data_association <- data.frame(
  x <- x,
  y_1 <- 2 * x + rnorm(100, mean = 0, sd = 10),
  y_2 <- -2 * x + rnorm(100, mean = 0, sd = 10),
  y_3 <- rnorm(100, mean = 50, sd = 10)
)

# check the data set
str(data_association)

# Here is a way to scatter plot x = x and y = y_1 from the data set `data_association`
ggplot(data=data_association, map=aes(x=x, y=y_1)) +
  geom_point()
# positive association

# do the same for the other two variables y_2 and y_3 with x. 
# replace <> 
ggplot(data=<>, map=aes(x=<>, y=<>)) +
  geom_point()

# replace <> 
ggplot(data=<>, map=aes(x=<>, y=<>)) +
  geom_point()

#### delete after lecture video
ggplot(data=data_association, map=aes(x=x, y=y_2)) +
  geom_point()

# negative association

ggplot(data=data_association, map=aes(x=x, y=y_3)) +
  geom_point()

# no association
####

# They are examples of positive, negative, and no association. 

### Histogram and skewness

#### data set 
data_histogram <- data.frame(
  symmetric_data <- rnorm(1000, mean = 50, sd = 10),
  left_skewed_data <- -rexp(1000, rate = 1),
  right_skewed_data <- rexp(1000, rate = 0.1)
) 

# check the data set
str(data_histogram)

# histogram for each of the variables
ggplot(data=data_histogram, map=aes(x=symmetric_data)) + 
  geom_histogram(bins=12)

# replace <> 
ggplot(data=<>, map=aes(x=<>)) + 
  geom_histogram(bins=12)

# replace <> 
ggplot(data=<>, map=aes(x=<>)) + 
  geom_histogram(bins=12)

#### delete after lecture video
ggplot(data=data_histogram, map=aes(x=left_skewed_data)) + 
  geom_histogram(bins=12)

ggplot(data_histogram, aes(x=right_skewed_data)) + 
  geom_histogram(bins=12)
####

### box plot, inter-quartile range

# We use the `interest_rate` variable in the data set `loan50`
# First, we plot its histogram and dot plot.

ggplot(data=loan50, map=aes(x=interest_rate)) +
  geom_histogram()

ggplot(data=loan50, map=aes(x=interest_rate)) +
  geom_dotplot() +
  geom_vline(xintercept = median(loan50$interest_rate), color='blue')

mean(loan50$interest_rate) # 11.5672
median(loan50$interest_rate) # 9.93

ggplot(data=loan50, map=aes(x=interest_rate)) +
  geom_boxplot() 

  geom_dotplot()

  geom_vline(xintercept = median(q_lower)) +
  geom_vline(xintercept = median(q_upper)) 

### Q1, median, Q3, IQR = Q3-Q1
q <- loan50$interest_rate
q
q <- sort(q)
q[25]
q[26]
(q[25] + q[26])/2
median(q)

q_lower <- q[1:25]
q_lower
median(q_lower)
q_lower[13]
# This is our q1

q_upper <- q[26:50]
q_upper
median(q_upper)
# This is our q3 
q_upper[13]

# IQR = Q3 - Q1
iqr <- median(q_upper) - median(q_lower)
iqr
1.5 * iqr

### Robustness
my_vec2 <- (2,3,5,7,10)