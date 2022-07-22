library(googlesheets4)
library(dplyr)
library(tidyr)
library(stringr)

url <- "https://docs.google.com/spreadsheets/d/16UKkv3E11ArkSyaTscJrpFNBPdFWfcGr87lNOo6yZyM"

# table metadata
meta <- read_sheet(url, sheet="Table overview/status")

# remove tables below blank line
brk <- which(is.na(meta$Table))
meta <- meta[1:(brk-1),]

meta_tsv <- meta %>%
    mutate(entity="meta",
           required=ifelse(tolower(Required) == "yes", TRUE, NA)) %>%
    select(entity, required, table=Table)

table_names <- meta_tsv$table
tables <- lapply(table_names, function(x) read_sheet(url, sheet=x, skip=1))
names(tables) <- table_names

tsv_format <- function(t) {
    tables[[t]] %>%
        filter(!is.na(Column)) %>%
        mutate(entity="Table",
               table=t,
               pk=ifelse(paste0(t, "_id") == Column, TRUE, NA),
               type=ifelse(`Data Type` == "enumeration", Column, `Data Type`),
               required=ifelse(tolower(Required) == "yes", TRUE, NA)) %>%
        select(entity, table,
               column=Column, type, required,
               pk, ref=References,
               note=Description)
}

out <- lapply(table_names, tsv_format) %>%
    bind_rows()

# enumerated values
enum_format <- function(t) {
    tables[[t]] %>%
        filter(!is.na(Enumerations)) %>%
        mutate(entity="enum") %>%
        select(entity,
               table=Column,
               column=Enumerations) %>%
        separate_rows(column, sep="\n") %>%
        mutate(column=str_trim(column))
}

enum_tsv <- lapply(table_names, enum_format) %>%
    bind_rows %>%
    distinct()

out <- bind_rows(out, enum_tsv, meta_tsv)

readr::write_tsv(out, file="GREGoR_data_model.tsv", na="", escape="backslash")
