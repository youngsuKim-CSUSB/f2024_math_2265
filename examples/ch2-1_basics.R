# Here # is to comment out. I.e., any words after # will be ignored by R

library(openintro)
library(ggplot2)

# We will use the loan50 data set available at https://www.openintro.org/data/index.php?data=loan50

# 1. check data set
str(loan50)

# 2. choose two numerical variables and name the columns as x_var and y_var

# 3. make scatter plot with ggplot
ggplot(loan50, aes(x=loan_amount, y=interest_rate)) +
  geom_point()

# 4. make dot plot of x_var
ggplot(loan50, aes(x=loan_amount)) +
  geom_dotplot()

# 5. make histogram
ggplot(loan50, aes(x=loan_amount)) +
  geom_histogram(bins=8)

# --- 
# how to install a package

# Install the `readxl` package if you haven't already
install.packages("readxl")
library("readxl")
help("readxl") # after executing this right, see the lower right corner
