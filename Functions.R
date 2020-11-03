#-------------------------------------------------------------------------#
#                                                                         #
#                 FUNCTIONS TO CONTROL MACAULAY2 SOFTWARE                 #
#                                                                         #
#-------------------------------------------------------------------------#

# V1 FECHA

#-------------------------------------------------------------------------#
# OBSERVACIONES:

# 1. Bla bla bla
# 2. Bla bla bla
# 3. Bla bla bla
#


# soatnuh -----------------------------------------------------------------



#-------------------------------------------------------------------------#

#' Generation of a .nb file in a specific folder with some text inside
#'
#' @param file_name name of the nb file
#' @param text_to_run text that will be printed inside the .nb file
#' @param add_print if it is needed that the extra text of Print[] is added
#' @param folder_nb_file folder where the .nb file will be saved
#'
#' @return
#' @export
#'
#' @examples
gen_nb_file <- function(file_name,text_to_run,folder_nb_file, add_print=T,add_date=T) {
  
  # text_to_run <- paste0(c("Print[\n",text_to_run,"\n]"))
  if(add_print) text_to_run <- paste0(c("Print[\n",text_to_run,"\n]"))
  if(add_date) nb_comments <- paste0(nb_comments,"\n Generated on ",format(Sys.time(), "%b %d %Y, at %X"),collapse = "")
  
  text_to_run <- paste0(c("(*\n",nb_comments,"\n*)\n\n",text_to_run,"\n"))
  file_name <- paste0(c(folder_nb_file,"/",file_name,".nb"),collapse = "")
  
  # cat(text_to_run)
  write.table(text_to_run, file=file_name, append = F, sep = "", dec = ".",row.names = F, col.names = F, quote = FALSE)
  cat("The file ",file_name," was generated\n")
}
