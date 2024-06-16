
# This is the RMarkdown excercise

# Load packages

library(here)
library(tidyverse)
library(gtsummary)

# load data

df <- MASS::birthwt

# Add table

table1 <- df %>% 
  select(lwt, smoke) %>% 
  tbl_summary(
    by = smoke
  ) %>% 
  add_p()

table1

write_rds(table1, here("test", "table1.rds"))


# Add Graphics

graph1 <- df%>% 
  select(age) %>% 
  ggplot()+
  geom_histogram(aes(x = age), bins = 10)

graph1

write_rds(graph1, here("test", "graph1.rds"))
  