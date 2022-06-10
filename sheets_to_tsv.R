library(googlesheets4)
library(dplyr)

url <- "https://docs.google.com/spreadsheets/d/16UKkv3E11ArkSyaTscJrpFNBPdFWfcGr87lNOo6yZyM"
table_names <- sheet_names(url)[-1:-2] # first two sheets are metadata
table_names <- setdiff(table_names, "experiment (for future)")
tables <- lapply(table_names, function(x) read_sheet(url, sheet=x, skip=1))
names(tables) <- table_names

tsv_format <- function(t) {
    tables[[t]] %>%
        filter(!is.na(Column), !grepl(" ", Column, fixed=TRUE)) %>%
        mutate(entity="Table", 
               table=sub(" (prototype)", "", t, fixed=TRUE),
               type=gsub(" ", "_", `Data Type`, fixed=TRUE),
               pk=ifelse(grepl("(primary key)", Description, fixed=TRUE), TRUE, NA),
               required=ifelse(tolower(Required) == "yes", TRUE, NA)) %>%
        select(entity, table,
               column=Column, type, required,
               pk, ref=`Cross-table References`,
               note=Description)
}

out <- lapply(table_names, tsv_format) %>%
    bind_rows()

readr::write_tsv(out, file="GREGoR_data_model_v0.tsv")
