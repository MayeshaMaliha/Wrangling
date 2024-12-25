# using the data from the previous video
# if we had used this non-optimal approach to separate
dat %>% 
  separate(name, c("year", "name_1", "name_2"), 
           fill = "right", convert = TRUE)

# we could unite the second and third columns using unite()
dat %>% separate(name, c("year", "name_1", "name_2"), 
                 fill = "right", convert = TRUE) %>% 
  unite(variable_names, name_1, name_2, sep = "_") 

# spread the columns
dat %>% separate(name, c("year", "name_1", "name_2"), 
                 fill = "right", convert = TRUE) %>% 
  unite(name, name_1, name_2, sep = "_") %>%
  spread(name, value) %>% 
  rename(fertility = fertility_NA)