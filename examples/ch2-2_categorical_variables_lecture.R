library("openintro")
library("ggplot2")
# library("tidyverse")

## Contingency Table (two-way table): use `loan50` or `loans_full_schema`
str(loan50)

loan50$homeownership

### bar plot and table of single variable
table(loan50$homeownership)

ggplot(data=loan50, map=aes(x=homeownership)) +
  geom_bar()

## contingency table (two categorical variables)

### as.vector is used to suppress the 0 column
loan50$verified_income

t <- table(loan50$homeownership, as.vector(loan50$verified_income))
t

#### prop table
prop.table(t)
prop.table(t, margin = 1)
prop.table(t, margin = 2)

#### total (denoted by sum)
addmargins(t)

## bar plot of two variables
ggplot(data=loan50, map=aes(x=homeownership, fill=verified_income)) +
  geom_bar()

ggplot(data=loan50, map=aes(x=homeownership, fill=verified_income)) +
  geom_bar(position = "dodge")

ggplot(data=loan50, map=aes(x=homeownership, fill=verified_income)) +
  geom_bar(position = "fill")

ggplot(data=loan50, map=aes(x=verified_income, fill=homeownership)) +
  geom_bar(position = "fill")

## Upload your work to https://csusb.instructure.com/courses/42324/assignments/671701

## Check your understanding

## categorical variables
## (1) Grab two categorical variables and make a contingency table and bar plots
## (2) What can you say about the results?

## numerical variable
## (1) make two vectors (of length 5) having the same median but different min (or max)
## (1) change of the vectors such that its mean is the same but the standard deviations are different
