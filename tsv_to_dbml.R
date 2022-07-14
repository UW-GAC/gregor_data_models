#remotes::install_github("UW-GAC/AnvilDataModels")

prefix <-  "GREGoR_data_model_v0"
AnvilDataModels::tsv_to_dbml(paste0(prefix, ".tsv"), 
                             paste0(prefix, ".dbml"))

# check that data model object can be created
AnvilDataModels::tsv_to_dm(paste0(prefix, ".tsv"))
