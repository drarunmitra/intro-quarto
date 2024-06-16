
# This is the RMarkdown excercise

# Load packages

library(here)
library(tidyverse)
library(gtsummary)

# load data

df <- MASS::birthwt

# Add table

df %>% 
  select(lwt, smoke) %>% 
  tbl_summary(
    by = smoke
    ) %>% 
  add_p()


# Add Graphics

df %>% 
  select(age) %>% 
  ggplot()+
  geom_histogram(aes(x = age), bins = 10)
  