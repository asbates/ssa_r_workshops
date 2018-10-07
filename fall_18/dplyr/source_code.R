# load packages and read in data
# if not installed, use install.packages("package_name")
library(dplyr)
library(readr)
library(here)

dirty_burrito <- read_csv(here("fall_18", "data", "burritos_01022018.csv"))

# quick look at what we have
dirty_burrito[, 1:10]
names(dirty_burrito)

# select variables of interest
clean_burrito <- dirty_burrito %>%
  select(Location, Burrito, Yelp, Google, Cost, `Mass (g)`,
         Tortilla, Meat, Synergy, overall, Beans)
clean_burrito

# rename variables
clean_burrito <- clean_burrito %>%
  rename(
    location = Location,
    burrito = Burrito,
    yelp_rating = Yelp,
    google_rating = Google,
    cost = Cost,
    mass = `Mass (g)`,
    tortilla = Tortilla,
    meat = Meat,
    synergy = Synergy,
    overall_rating = overall,
    beans = Beans
  )
clean_burrito
