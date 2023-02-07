# make a function to transform Google Sheets tables into an R list

sheets_to_list <- function(tab_list, tables) {
  for (i in 1:length(tab_list)) {
    # manually remove null entries from the table list
    tab_list[[i]] <- tab_list[[i]][sapply(tab_list[[i]], function(x){!all(is.na(x))})]
    
    # make each row of the data frame a list and make a list of the rows
    tab_list[[i]] <- append(tab_list[[i]], list(apply(tables[[i]], 1, as.list)))
    
    # label the key as "Columns"
    var_loc <- length(tab_list[[i]])
    names(tab_list[[i]])[var_loc] <- "columns"
    
    # split "enumerations" and "examples" into vectors according to line breaks in the Google Sheets file
    for (j in 1:nrow(tables[[i]])) {
      
      # coerce enumerations to a vector
      make_enum_vec <- ifelse(is.na(tab_list[[i]][[var_loc]][[j]]$enumerations), NA,
                              strsplit(as.character(unlist(tab_list[[i]][[var_loc]][[j]]$enumerations)), split = "\n"))
      tab_list[[i]][[var_loc]][[j]]$enumerations <- unlist(make_enum_vec)
      
      # coerce examples to a vector
      make_examp_vec <- ifelse(is.na(tab_list[[i]][[var_loc]][[j]]$examples), NA,
                               strsplit(as.character(unlist(tab_list[[i]][[var_loc]][[j]]$examples)), split = "\n"))
      tab_list[[i]][[var_loc]][[j]]$examples <- unlist(make_examp_vec)
      
      # manually remove null entries from the variable list
      tab_list[[i]][[var_loc]][[j]] <- tab_list[[i]][[var_loc]][[j]][sapply(tab_list[[i]][[var_loc]][[j]], function(x){!all(is.na(x))})]
    }
  }
  return(tab_list)
}
