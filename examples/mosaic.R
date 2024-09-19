library("openintro")
library("ggplot2")
library("ggmosaic")

names(county)
str(county)

ggplot(data=county, aes(x=metro)) +
  geom