library(googlesheets4)
library(dplyr)
library(readr)

url <- "https://docs.google.com/spreadsheets/d/1p_0nhKMvKBueSrUAQMCe9cHv16WyhKSX_jnxNCuGFWg"

log <- read_sheet(url, sheet="Change Log", col_types="cccc") %>%
    filter(!is.na(Version)) %>%
    mutate(Version = as.character(Version)) %>%
    mutate(`Change notes` = gsub('"', "'", `Change notes`)) %>%
    filter(!(Version == "1.3" & Table == "genetic_findings")) %>%
    mutate(Version = ifelse(Table == "genetic_findings" & Version == "1.2", "1.3", Version)) %>%
    arrange(Version)

con <- file("CHANGELOG.md", "w")
writeLines("# Change log\n", con)
versions <- sort(unique(log$Version), decreasing = TRUE)
for (v in versions) {
    writeLines(paste("##", v, "\n"), con)
    log %>%
        filter(Version == v) %>%
        select(-Version) %>%
        knitr::kable("pipe") %>%
        writeLines(con)
    writeLines("\n", con)
}
close(con)
