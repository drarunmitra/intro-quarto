---
title: "RMarkdown Group Activity"
author: "Write your Group Name"
date: "2021-10-23"
output: html_document
editor_options: 
  chunk_output_type: console
---



# Goal Group Activity

> To apply the principles of reproducible data science methods to a given dataset.

> To perform exploratory analysis including data importing, cleaning, wrangling and visualization using `tidy` methods.

> To document the analysis of the given dataset and prepare a report (in HTML and Word) using RMardown.

# About the Dataset

The dataset contains information on the deaths due to COVID-19 in 14 districts of Kerala state. This information is available for download from the Government of Kerala COVID-19 Dashboard (<https://dashboard.kerala.gov.in/covid/>).

### Variables of the dataset

| Variable Name | Description                           |
|---------------|---------------------------------------|
| sl_no         | Serial Number                         |
| name          | Name of the Deceased                  |
| age           | Age of the Deceased                   |
| sex           | Gender of the Deceased                |
| district      | District of Residence of the Deceased |
| date_reported | Date of Reporting                     |
| date_of_death | Date of Death                         |

# Assignments

## 1. Load the required packges


```r
# library()
library(tidyverse)
```

```
## -- Attaching packages --------------------------------------- tidyverse 1.3.1 --
```

```
## v ggplot2 3.3.5     v purrr   0.3.4
## v tibble  3.1.4     v dplyr   1.0.7
## v tidyr   1.1.4     v stringr 1.4.0
## v readr   1.4.0     v forcats 0.5.1
```

```
## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

```r
library(gtsummary)
library(here)
```

```
## here() starts at C:/Users/Arun/Dropbox/RIntro2021_Book/RMarkDown_Session
```

## 2. Import the Data































