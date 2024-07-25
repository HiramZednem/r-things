l <- tribble (
  ~movie,~genre1, ~genre2,
  'spongebob','comedy','kids',
  'pawpatrol','kids','fiction',
  'saw','horror','suspense'
)




as.data.frame( table(l %>% select(genre1, genre2) %>% unlist()))

l %>% 
  select(genre1,genre2) %>% 
  unlist() %>% # este deja todas las etiquetas volando
  table %>%  # funciona como un group by
  as.data.frame() %>% 
  setNames(c('genre', 'total_entries'))


              