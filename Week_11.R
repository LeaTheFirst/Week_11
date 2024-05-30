#Question 1

rooms <- c(1, 5, 2, 1, 3, 1, NA, 3, 1, 3, 2, 1, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA, 4, 3 ,1 ,7 ,8 ,2 ,1 ,NA ,1, 1, 3)

rooms[rooms>2]

rooms_no_na <- rooms[!is.na(rooms)]

rooms_greater_than_2 <- rooms_no_na[rooms_no_na>2]

length(rooms_greater_than_2)

#Question 2

class(rooms)


#Question 3

median(rooms)

median(rooms, na.rm = TRUE)

#Question 4

install.packages("tidyverse")
library(tidyverse)
library(here)

dir.create("data")
dir.create("data_output")
dir.create("fig_output")


download.file(
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv", mode = "wb"
)

interviews <- read_csv(
  here("data", "SAFI_clean.csv"), 
  na = "NULL")

#Question 5

danish_kings <- read_csv(
  here("data", "danish_kings.csv"), 
  na = "NA")

mean(danish_kings$reign_end_year-danish_kings$reign_start_year, na.rm = TRUE)

median(danish_kings$reign_end_year-danish_kings$reign_start_year, na.rm = TRUE)


