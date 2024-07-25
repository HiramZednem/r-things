bookings_clean <- clean_names(bookings_df)
bookings_clean %>% 
  rename(
    kids = ni_os,
    babies = beb_s,
    adult = adultos
  ) -> bookings_clean
  
help(select)
bookings_clean %>% select(hotel, is_canceled, adult, kids, babies) -> bookings_clean


View(bookings_clean)
colnames(bookings_clean)


install.packages('Tmisc')
install.packages('datasauRus')

library(Tmisc)
data(quartet)
View(quartet)

help(sd)
help(cor)

quartet %>% 
  group_by(set) %>% 
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))

ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method = lm, se=FALSE) + facet_wrap(~set)
# ---------------------------------------------------------------------------- #

install.packages('SimDesign')
