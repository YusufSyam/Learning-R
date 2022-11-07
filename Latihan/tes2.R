penguins %>%
  drop_na %>%
  group_by(species) %>%
  summarize(rata_rata=mean(body_mass_g))
