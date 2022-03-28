library(googlesheets4)
library(dplyr)

url <- "https://docs.google.com/spreadsheets/d/16UKkv3E11ArkSyaTscJrpFNBPdFWfcGr87lNOo6yZyM"
table_names <- sheet_names(url)[-1:-2] # first two sheets are metadata
tables <- lapply(table_names, function(x) read_sheet(url, sheet=x, skip=1))
names(tables) <- table_names

tsv_format <- function(t) {
    tables[[t]] %>%
        mutate(entity="Table", table=t,
               pk=ifelse(grepl("(primary key)", Description, fixed=TRUE), TRUE, NA)) %>%
        select(entity, table, 
               column=Column, type=`Data Type`,
               pk, ref=`Cross-table References`,
               note=Description)
}

out <- lapply(table_names, tsv_format) %>%
    bind_rows() %>%
    mutate(note=gsub("'", "", note)) # remove single quotes

readr::write_tsv(out, file="GREGoR_data_model_v0.tsv")
