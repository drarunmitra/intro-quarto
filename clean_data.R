### Script for cleaning Data

library(tidyverse)
library(readxl)
library(lubridate)


df <- read_excel("kerala_covid_deaths_data.xlsx", skip = 1)

unclean_names <- names(df)

df <- df %>% janitor::clean_names()

df <- df %>% 
  mutate(date_reported = lubridate::dmy(date_reported)) %>% 
  mutate(date_of_death = lubridate::dmy(date_of_death)) %>% 
  mutate(district = str_to_sentence(district)) %>%
  mutate(district = fct_collapse(district,Thiruvananthapuram = c("Thiruvananthapura m", "Thiruvananthapuram?K"))) %>% 
  mutate(district = fct_collapse(district, Kollam = c("Kollam?Thiruvanantha"))) %>% 
  mutate(district = fct_collapse(district,  Ernakulam = c("Eranakulam"))) %>% 
  mutate(district = fct_collapse(district, Kasaragod = c( "Kasargod"))) %>% 
  mutate(district = fct_collapse(district,  Kozhikode = c("Kozhikode?Ernakulam", "Kozhikode?Thiruvanan"))) %>% 
  mutate(district = fct_collapse(district, Alappuzha = c("Alappuzha?Kannur"))) %>% 
  mutate(district = fct_collapse(district, Malappuram = c("Malappuaram"))) %>% 
  mutate(sex = fct_collapse(sex, Male = "male")) %>% 
  mutate(sex = factor(sex, levels = c("Male", "Female"))) %>% 
  drop_na(sex) %>% 
  drop_na(date_reported) %>%
  drop_na(date_of_death) %>% 
  drop_na(age) 

names(df) <- unclean_names


write_rds(df, "kerala_covid_deaths.rds")

