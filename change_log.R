library(googlesheets4)
library(dplyr)
library(readr)

url <- "https://docs.google.com/spreadsheets/d/1mZlJ9IauaVNiJ6f2Q14pg6rGEpWVrAjMJmAZ_FioVTY"

log <- read_sheet(url, sheet="Change Log") %>%
    filter(!is.na(Version)) %>%
    mutate(`Change notes` = gsub('"', "'", `Change notes`))

write_tsv(log, file="change_log.tsv")
