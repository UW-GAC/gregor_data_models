#remotes::install_github("UW-GAC/AnvilDataModels")

prefix <-  "GREGoR_data_model"

# check that data model object can be created
AnvilDataModels::json_to_dm(paste0(prefix, ".json"))

AnvilDataModels::json_to_dbml(paste0(prefix, ".json"), 
                              paste0(prefix, ".dbml"))
