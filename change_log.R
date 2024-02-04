library(googlesheets4)
library(dplyr)
library(readr)

url <- "https://docs.google.com/spreadsheets/d/1NcB5pz7rWr2AJpjmDFu6v5E5pGVWmAoaS2kH-pF86H8"

log <- read_sheet(url, sheet="Change Log") %>%
    filter(!is.na(Version)) %>%
    mutate(`Change notes` = gsub('"', "'", `Change notes`)) %>%
    filter(!(Version == "1.3" & Table == "genetic_findings")) %>%
    mutate(Version = ifelse(Table == "genetic_findings", 1.3, Version)) %>%
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
