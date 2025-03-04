# example dataset: fertility data in wide format (from previous video)
library(tidyverse) 
library(dslabs)
path <- system.file("extdata", package="dslabs")
filename <- file.path(path, "fertility-two-countries-example.csv")
wide_data <- read_csv(filename)

# snippet of wide data
wide_data %>% select(country, '1960':'1965')

# move the values in the columns 1960 through 2015 into a single column
wide_data %>% pivot_longer(`1960`:`2015`)

# another way to do this - only country isn't being pivoted
wide_data %>% pivot_longer(-country)

# change the default column names
new_tidy_data <- wide_data %>% 
  pivot_longer(-country, names_to = "year", values_to = "fertility")
head(new_tidy_data)

# compare the class from our original tidy data (year is an integer) and in the new version (year is a character)
class(tidy_data$year)
class(new_tidy_data$year)

# use the names_transform argument to change the class of the year values to numeric
new_tidy_data <- wide_data %>% 
  pivot_longer(-country, names_to = "year", values_to = "fertility", 
               names_transform = list(year=as.numeric))

# plot the data as before
new_tidy_data %>% ggplot(aes(year, fertility, color = country)) +
  geom_point()
