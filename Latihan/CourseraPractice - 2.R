library(ggplot2)
data(diamonds)

head(diamonds)

str(diamonds)

colnames(diamonds)

glimpse(diamonds)


library(tidyverse)
mutate(diamonds, carat_2=carat*100)

head(diamonds)
