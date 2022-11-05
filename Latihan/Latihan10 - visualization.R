library("ggplot2")
library("palmerpenguins")

# Membuat scatter plot dengan ggplot()+geom_point()
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))

glimpse(penguins)