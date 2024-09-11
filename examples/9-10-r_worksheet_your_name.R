## First load required libraries 
library(openintro)
library(ggplot2)

# In each question, replace <> by your answer. 

# Question 1. 
# (1) Make a scatter plot of the variables `debt_to_income` (for x) and `total_credit_utilized` (for y) in `loan50`.
ggplot(data=<>, map=aes(x=<>, y=<>)) +
  geom_point()

# (2) What kind of associations do they have?
# Ans: 

# Question 2. 
# (1) Make a histogram of the variable `annual_income` in `loan50`.
ggplot(data=<>, map=aes(x=<>)) +
  geom_histogram()

# (2) Is it symmeric, skewed-left, skewed-right?
# Ans:

# Question 3. Consider the variable `num_cc_carrying_balance` in `loan50`.
# (1) Save the sorted loan50$num_cc_carrying_balance and to the variable my_var.
my_var <- sort(<>)

# (2) Find Q1, median, and Q3 
median(my_var)

q_lower <- <>

median(q_lower)  

q_upper <- <>
  
median(q_upper)

# (3) Make a boxplot of the variable `num_cc_carrying_balance` in `loan50`
ggplot(data=<>, map=aes(x=<>)) +
  geom_boxplot()

# (4) Are there any outliers?

# Question 4. Save your work as 9-10-r_worksheet_your_name.R ans upload it Canvas: 
# https://csusb.instructure.com/courses/42324/assignments/670837