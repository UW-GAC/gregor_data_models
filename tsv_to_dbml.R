remotes::install_github("UW-GAC/AnvilDataModels")

tsv <- "GREGoR_data_model_v0.tsv"
dbml <- "GREGoR_data_model_v0.dbml"
AnvilDataModels::tsv_to_dbml(tsv, dbml)
