remotes::install_github("UW-GAC/AnvilDataModels")

tsv <- "GREGoR_data_model_draft2.tsv"
dbml <- "GREGoR_data_model_draft2.dbml"
AnvilDataModels::tsv_to_dbml(tsv, dbml)
