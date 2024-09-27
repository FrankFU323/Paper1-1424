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
beachname <- c("Sunnyside Beach", "Marie Curtis Park East Beach")

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
    ),
    number_of_ecoli = round(runif(n = number_of_dates, min = 0, max = 2000)),
    sitename = sample(c(sample(17:23, number_of_dates, replace = TRUE), 
                        sample(29:33, number_of_dates, replace = TRUE)), 
                      number_of_dates, replace = TRUE),
    beachname = ifelse(sitename %in% 17:23, 
                       "Sunnyside Beach", "Marie Curtis Park East Beach")
  )



#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")




