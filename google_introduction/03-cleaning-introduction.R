install.packages("here")
install.packages("skimr")
install.packages("janitor")

library(here)
library(skimr)
library(janitor)
library(tidyverse)

library(palmerpenguins)
data("penguins")

# Functions to view data
skim_without_charts(penguins)

glimpse(penguins)

head(penguins)

penguins %>% 
  select(-species)

penguins %>% 
  rename(new_island = island)

rename_with(penguins, tolower)

clean_names(penguins) # garantiza que solo haya caraccteres numeros y guiones bajos
help(summarize)

penguins %>% group_by (species) %>% drop_na() %>% summarize()
penguins %>% group_by (island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm), mean_body_mass_g = mean(body_mass_g))

penguins %>% group_by(island, species) %>% drop_na() %>% summarise(total_penguins = n()) %>% arrange(island)

