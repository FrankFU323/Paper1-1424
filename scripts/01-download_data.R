#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Tianrui Fu
# Date: 21 September 2024
# Contact: tianrui.fu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
# source: https://open.toronto.ca/dataset/toronto-beaches-water-quality/
torontobeach_waterquality <-
  list_package_resources("toronto-beach-water-quality") |>
  filter(name == "toronto-beaches-water-quality - 4326.csv") |>
  get_resource()

#### Save data ####
write_csv(data, "data/raw_data/pre_data.csv")
