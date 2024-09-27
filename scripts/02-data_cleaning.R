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
# First, to transfer the capital and lower-case letter
# Second, to set up the outlier dividing value and remove the values which
# larger than the outliers
# Third, write the cleaned data as analysis_data
raw_data <- read_csv("data/raw_data/pre_data.csv")

cleaned_data <- raw_data |>
  janitor::clean_names() |> 
  select(name, collection_date, site_name, e_coli) |> 
  mutate(
    e_coli = as.numeric(e_coli),
    Date = lubridate::ymd(collection_date),
    site_name = sub("W", "", site_name)
  ) |> 
  rename(beach_name = name) |>
  tidyr::drop_na()

threshold <- 2000
cleaned_data <- cleaned_data %>%
  mutate(is_outlier = ifelse(e_coli > threshold, "Outlier", "Normal"))

cleaned_data <- cleaned_data %>%
  filter(e_coli <= threshold)

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
