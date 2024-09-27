#### Preamble ####
# Purpose: Sanity check of the data
# Author: Tianrui Fu
# Date: 21 September 2024
# Contact: tianrui.fu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_ecoli |> min() <= 0

# Test for E.coli smaller than 2000
data$number_of_ecoli |> max() >=2000

# Test for site location
in_siterange = ifelse((data$sitename >= 17 & data$sitename <= 23) |
                    (data$sitename >= 29 & data$sitename <= 33), TRUE, FALSE)
print(in_siterange)

# Test for year in 2007-2024
in_yearrange = ifelse((data$dates >= as.Date("2007-06-03") & data$dates <= as.Date("2024-09-08")), TRUE, FALSE)
print(in_yearrange)

# Test for NAs
all(is.na(data$number_of_ecoli))
