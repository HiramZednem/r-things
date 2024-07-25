# Importing Tidyverse packages to make the analysis
library(tidyverse)

# Importing the dataset
lol_champions <- read_csv('./datasets/LoL_champions.csv')

# Looking throught it
View(lol_champions_clean)
glimpse(lol_champions_clean)
head(lol_champions_clean)
colnames(lol_champions_clean)

# We need to clean the data
library(janitor)
lol_champions_clean <- clean_names(lol_champions)


# Questions that I want to answer:
# - How many Mele champions are?
# - How many Tags are?
# - What's the AVG life per Tag?
# - What's the champ with max Base HP and the champ with the min HP
# - How many champs exist on every resourse type category?
# - The first 5 Melee champs with best attack speed
# - How many champs are available to play in each role
# - There exist a relation of life in each role? 
# - At level 18 whose are the better championss with armor and magig resistence
# - Give me the champions with more attack dammagge per role


# How many Mele champions are?
df_range_type <- lol_champions_clean %>% 
  group_by(range_type) %>% 
  summarise(quantity = n())

ggplot(df_range_type, aes(x=range_type, y=quantity)) + 
  geom_bar(stat='identity')

# How many champions per tag are?
lol_champions_tags <- lol_champions_clean %>% 
  select(name, tags) %>% 
  separate(tags, sep = ',', into = paste0('tag', 1:2))

lol_champions_tags %>% 
  select(name, tag1) %>% 
  group_by(tag1) %>% 
  summarise(N = n()) -> tag1

lol_champions_tags %>% 
  select(name, tag2) %>% 
  drop_na() %>% 
  group_by(tag2) %>% 
  summarise(N = n()) -> tag2

champions_per_tag <-
  bind_cols(tag1,tag2) %>% 
  clean_names() %>% 
  select(tag1,n_2,n_4) %>% 
  mutate(total_entries = n_2 + n_4) %>% 
  select(tag1, total_entries) 

head(champions_per_tag)

# better way to get the same
as.data.frame(table(unlist(strsplit(lol_champions_clean$tags, ",", fixed=TRUE))))

unlist((strsplit(lol_champions_clean$tags, ",", fixed=TRUE)))



ggplot(champions_per_tag, aes(x=tag1, y=total_entries)) + geom_bar(stat='identity')

  
  

View(
  lol_champions_clean %>% 
    select(name,  ) %>% 
    separate(role, sep = ',', into = paste0('role', 1:5))
)





