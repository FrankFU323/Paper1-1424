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

# Test for NAs
all(is.na(data$number_of_ecoli))
