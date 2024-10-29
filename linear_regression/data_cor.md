```{r}
# Set seed for reproducibility
set.seed(0)

# Initialize data frame with a single column of random values
df <- data.frame(x = rnorm(100))

# Function to generate data with a specified correlation
generate_correlated_data <- function(x, r) {
  y <- r * x + sqrt(1 - r^2) * rnorm(length(x))
  return(y)
}

# Target correlations
target_correlations <- c(0.33, 0.69, 0.98, 1.00, 0.08, -0.64, -0.92, -1.00)
# target_correlations <- sample(target_correlations, 4)

# Loop over each target correlation and add as a new column in df
for (r in target_correlations) {
  # Use the exact correlation value, including sign, in the column name
  col_name <- paste0("r_", gsub("\\.", "", as.character(r * 100)))
  df[[col_name]] <- generate_correlated_data(df$x, r)
}

# View the resulting data frame
head(df)

# Save the data frame to a file
write.csv(df, "correlated_datasets.csv", row.names = FALSE)
```
