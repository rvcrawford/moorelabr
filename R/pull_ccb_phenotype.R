#' splits a string separated by a comma and keeps the phenotypic observation, typically a breedbase data variable that has a timestamp
#'
#' @param x
#'
#' @return a phenotypic observation
#' @export
#'
#' @examples
#' my_dat = c("5,2023-05-15T14:04:44.55",  "7,2023-05-15T14:04:57.667")
#' pull_ccb_phenotype(my_dat)
pull_ccb_phenotype <- function(x){

  data.table::tstrsplit(x, ",", type.convert = T, keep = 1) |> unlist()
}
