#### Preamble ####
# Purpose: Simulates data
# Author: Tianrui Fu
# Date: 21 September 2024 
# Contact: tianrui.fu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(1424)

# Define the start and end date
start_date <- as.Date("2007-06-03")
end_date <- as.Date("2024-09-08")

# Set the number of random dates you want to generate
number_of_dates <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 20)
  )


#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")




