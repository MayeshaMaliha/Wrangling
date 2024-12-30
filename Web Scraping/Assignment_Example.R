# import a webpage into R
library(rvest)
url <- "https://en.wikipedia.org/w/index.php?title=Opinion_polling_for_the_United_Kingdom_European_Union_membership_referendum&oldid=896735054"
h <- read_html(url)
class(h)
h

tab <- h %>% html_nodes("table")

tab <- read_html(url) %>% html_nodes("table")
length(tab)

tables <- lapply(tab, html_table, fill = TRUE)

# Loop through tables to find the one matching the criteria
for (i in seq_along(tables)) {
  df <- tables[[i]]  # Current table
  
  # Check if the table has 9 columns and the first column is "Date(s) conducted"
  if (ncol(df) == 9 && colnames(df)[1] == "Date(s) conducted") {
    print(paste("The first table with 9 columns and 'Date(s) conducted' as the first column is Table", i))
    break
  }
}

