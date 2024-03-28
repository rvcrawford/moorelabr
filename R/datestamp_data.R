#' Insert a datestamp into a vector of data, probably data exported to breedbase

#'
#' @param x value of data, probably notes of some sort
#' @param my_date
#'
#' @return a string containing a datestamp added.
#' @export
#'
#' @examples
#' x <- 1:10
#' my_date <- "2023-12-23"
#' datestamp_data(x, my_date)
datestamp_data <- function(x, my_date = "string"){
  my_date2 = data.table::IDateTime(my_date)
  paste(x,",", my_date2[[1]]," ", my_date2[[2]], sep = "")
}


