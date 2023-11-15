library(googlesheets4)
library(dplyr)
library(readr)

url <- "https://docs.google.com/spreadsheets/d/1mZlJ9IauaVNiJ6f2Q14pg6rGEpWVrAjMJmAZ_FioVTY"

log <- read_sheet(url, sheet="Change Log") %>%
    filter(!is.na(Version)) %>%
    mutate(`Change notes` = gsub('"', "'", `Change notes`)) %>%
    filter(!(Version == "1.3" & Table == "genetic_findings")) %>%
    mutate(Version = ifelse(Table == "genetic_findings", 1.3, Version)) %>%
    arrange(Version)

write_tsv(log, file="change_log.tsv")

# markdown table for release notes
log %>% filter(Version == "1.3") %>%
    knitr::kable("pipe")
