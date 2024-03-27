#' Insert a timestamp into a string, likely a filename

#' @return a string containing a timestamp added. Timestamp is rounded to the nearest minute
#' @param myFilename A string, likely a filename
#' @examples
#' timestamp_filename("my_awesome_dataset.csv")
#' timestamp_filename("superduper.awesome_dataset.xlsx")


timestamp_filename <- function(my_File_name = "string"){
  tt <- strptime(Sys.time(), format="%Y-%m-%d %H:%M")
  file_suffix_length <- nchar(stringr::str_split_i(my_File_name, "\\.", i = -1))
  suffix <- substr(my_File_name, nchar(my_File_name)-file_suffix_length, nchar(my_File_name))
  prefix <-substr(my_File_name,1, nchar(my_File_name)-(file_suffix_length+1))
  return(paste(prefix,"_", tt, suffix, sep = ""))
}
