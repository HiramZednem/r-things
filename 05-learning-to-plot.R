library(tidyverse)
data(penguins)


head(penguins)
colnames(penguins)

# Supongamos que quieres modelar la relación entre masa corporal y longitud de aletas en las tres especies de pingüino.
ggplot(data = penguins) + geom_point(mapping = aes(y = body_mass_g, x = flipper_length_mm))

help("read_csv")

#data
# figura geometrica, like pointst, bar, lines and more...
# Chose the look -> aesthetic 
# The mapping indicates what aesthetic we want to have. 

ggplot(data=penguins) + 