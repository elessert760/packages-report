## deja vu from yesterday!

## create a data frame of your installed packages
library(tidyverse)
library(here)

dat <- installed.packages() %>% as.data.frame() %>%
  select(c(Package, LibPath, Version, Priority, Built)) %>%
  unique

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

write_csv(x = dat, path = here("data/installed-packages.csv"))


## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

## when this script works, stage & commit it and the csv file
## PUSH!
