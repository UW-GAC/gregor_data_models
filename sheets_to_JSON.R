library(googlesheets4)
library(dplyr)
library(tidyr)
library(stringr)
library(jsonlite)

url <- "https://docs.google.com/spreadsheets/d/16UKkv3E11ArkSyaTscJrpFNBPdFWfcGr87lNOo6yZyM"
model_name = "GREGoR Data Model"
model_description = "Data model for the GREGoR consortium"
model_version = "1"

# table metadata
meta <- read_sheet(url, sheet="Table overview/status")

# remove tables below blank line
brk <- which(is.na(meta$Table))
meta <- meta[1:(brk-1),]

meta <- meta %>%
    mutate(required=ifelse(tolower(Required) == "yes", TRUE, NA)) %>%
    select(table=Table, required)


# pull tables that will be converted to JSON
table_names <- meta$table
tables <- lapply(table_names, function(x) read_sheet(url, sheet=x, skip=1, col_types="c"))
names(tables) <- table_names
rm(list = c("table_names", "url"))


# rename and reorder columns
for (i in 1:length(tables)) {
    tables[[i]] <- tables[[i]] %>%
        filter(!is.na(Column)) %>%
        mutate(primary_key = ifelse(paste0(names(tables)[i], "_id") == Column, TRUE, NA),
               required=ifelse(tolower(Required) == "yes", TRUE, NA)) %>%
        select(column = Column, 
               primary_key,
               required,
               description = Description, 
               data_type = `Data Type`, 
               references = References, 
               enumerations = Enumerations, 
               multi_value_delimiter = `Multi-value delimiter`,
               examples = `Example Value`, 
               notes) %>%
        mutate(description=gsub('"', "'", description),
               notes=gsub('"', "'", notes)) # replace double with single quotes
}


# call in the sheets_to_list function that accepts two arguments:
# 1) the list describing which tables are in the Google Sheets file
# 2) the list of data tables corresponding to the first argument
source("sheets_to_list.R")
tab_list <- sheets_to_list(apply(meta, 1, as.list), tables)
rm(list = c("meta", "tables", "sheets_to_list"))


# initialize leading text
master <- list(
    # Overall File Details
    name = model_name,
    description = model_description,
    version = model_version,
    
    # Data Table Details
    tables = tab_list
)
rm(list = c("tab_list"))


# compile master file in JSON format
out <- toJSON(x = master,
              pretty = TRUE,
              auto_unbox = TRUE,
              unbox = TRUE)
rm(list = c("master"))


# unquote the logical parameters TRUE and FALSE
out <- gsub(pattern = ': \"TRUE\"',  replacement = ': true',  x = out)
out <- gsub(pattern = ': \"FALSE\"', replacement = ': false', x = out)


# view the final version
out


# save the final version
write(out, "GREGoR_data_model.json")
