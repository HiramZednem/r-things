library(tidyverse)

data("diamonds")

as_tibble(diamonds)

data("mtcars")
View(mtcars)
colnames(mtcars)
head(mtcars)
glimpse(mtcars)

read_csv(readr_example("mtcars.csv"))

