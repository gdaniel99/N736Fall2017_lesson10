#' =======================================
#' Working with the HELP dataset
#' 
#' Missing Data
#' 
#' Melinda Higgins, PhD
#' dated 09/27/2017
#' =======================================

library(dplyr)
library(tidyverse)

# The *.Rdata file can be downloaded from the SASR website
# https://nhorton.people.amherst.edu/sasr2/datasets.php 
#
# download the dataset and put it in your working directory

# load the dataset help.Rdata
load("help.Rdata")

# let's look at all 5 CESD measurements
# over time people left the study or
# were "lost to follow-up"

cesdset <- helpdata %>%
  select(cesd,cesd1,cesd2,cesd3,cesd4)

# summary gives you some details
summary(cesdset)

# we can use the is.na() function to
# find and count the missing data
# let's look at cesd1 - just the 1st 20 rows
is.na(helpdata$cesd1[1:20])

# let's look at all rows
# amount of missing data add the sum() function
sum(is.na(helpdata$cesd1))

# using the mean() will give you the 
# proportion of missing
mean(is.na(helpdata$cesd1))

# if we negate the is.na() using !
# we can get the proportion not missing
mean(!is.na(helpdata$cesd1))


