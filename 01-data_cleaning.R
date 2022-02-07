#### Preamble ####
# Purpose: Clean the survey data downloaded from opendatatoronto
# Author: Chengran Zhang
# Data: 6 Feburary 2021
# Contact: chengran.zhang@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
library(opendatatoronto)

#DATA download

library(opendatatoronto)
library(dplyr)

# get package
package <- show_package("5a85e2b8-627a-4483-9c60-436990ddeef2")
package

# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/raw_data.csv"
                     )
# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)

reduced_data <- 
  raw_data %>% 
  select(first_col, 
         second_col)
rm(raw_data)
         

#### What's next? ####



         