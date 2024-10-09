# This is prepared with help of ChatGPT

# Step 1: Install and load ggplot2 if you want enhanced visuals
# install.packages("ggplot2")  # Uncomment to install
library(ggplot2)

# Step 2: Generate synthetic data (or load your own)
# For example, generating a normal distribution
set.seed(123)  # For reproducibility
data <- rnorm(1000, mean = 0, sd = 1)  # mean = 0, sd = 1

# Step 3: Create the Q-Q plot using base R
qqnorm(data, main = "Q-Q Plot")
qqline(data, col = "red")  # Adds a reference line

# Optionally, using ggplot2 for a more polished Q-Q plot
# qq_plot <- ggplot(data.frame(data), aes(sample = data)) +
#   stat_qq() +
#   stat_qq_line(col = "red") +
#   ggtitle("Q-Q Plot") +
#   xlab("Theoretical Quantiles") +
#   ylab("Sample Quantiles")
# print(qq_plot)

# Generate non-normal data (exponential distribution)
set.seed(123)  # For reproducibility
non_normal_data <- rexp(1000, rate = 1)  # Exponential distribution with rate = 1

# View the first few values of the vector
head(non_normal_data)


