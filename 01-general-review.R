# Introducción
View(penguins)
library(palmerpenguins)
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species))

install.packages("tidyverse")
library("tidyverse")

library(lubridate)

# Arrays
people <- c("Pepe", "Ara", "Joan", "Pilgrim", "Axel")
names(people) <- c("Abogado", "Diseñador", "Mampo", "Rocketeria", "Analista")
print(people)

# Lists
things <- list(3, "glass", TRUE, 2.4, "deodorant")
print(things)

anidate_list <- list(things, list(0, "1"))
print(anidate_list)

# know type
str(anidate_list)

# date
date <- date() # "Fri Jul 12 18:24:18 2024"
nowe <- now() # "2024-07-12 18:24:57 CST"
today <- today() # "2024-07-12"

# Data frame
df <- data.frame(x = c(1, 2, 3), y = c(1.5, 5.5, 7.5))
View(df)

# data creation
dir.create("Documents/courses/r/o")
dir.create("./borrame")

file.create("new_text_file.txt") # it could be .csv, .doc, etc...

file.copy("new_text_file.txt", "destination_folde")

# errase
unlink("./borrame")

# conditionals
edad <- 19

if (edad > 18) {
  print("puedes subir")
} else if (edad > 50) {
  print("no es recomendable")
} else {
  print("no puedes mampo")
}

# Navegar en documentacion de paquetes:
browseVignettes("ggplot2")
