# Load Packages
library(tidyverse)
library(palmerpenguins)

# Penguin Plot
penguins %>%
  ggplot(aes(x = bill_depth_mm))+
  geom_histogram()

# Pull test
