#### Preamble ####
# Purpose: Cleans the pre_data into an analysis dataset
# Author: Tianrui Fu
# Date: 19 September 2024
# Contact: tianrui.fu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have downloaded the data
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/pre_data.csv")

cleaned_data <- raw_data |>
  janitor::clean_names() |> 
  select(beach_name, collection_date, e_coli) |> 
  mutate(
    e_coli = as.numeric(e_coli),
    Date = lubridate::ymd(collection_date)
  ) |> 
  rename(Name = beach_name) |> 
  tidyr::drop_na()

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
