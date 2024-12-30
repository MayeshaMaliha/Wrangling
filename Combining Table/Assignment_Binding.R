# Install and load necessary packages
library(Lahman)
library(tidyverse)

# Step 1: Identify the top 10 home run hitters in 2016
top <- Batting %>%
  filter(yearID == 2016) %>%
  arrange(desc(HR)) %>%    # Arrange by descending HR count
  slice(1:10) %>%          # Take entries 1-10
  pull(playerID)           # Extract only the playerID column as a vector

# Step 2: Filter the AwardsPlayers table to include only awards from 2016
awards_2016 <- AwardsPlayers %>%
  filter(yearID == 2016) %>%
  pull(playerID)           # Extract only the playerID column as a vector

# Step 3: Use setdiff to find players who won an award but were NOT in the top 10 home run hitters
non_top_award_players <- setdiff(awards_2016, top)

# Step 4: Count the number of players
number_of_non_top_award_players <- length(non_top_award_players)

# Display the result
number_of_non_top_award_players
