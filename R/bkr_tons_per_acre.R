#' Translate 18 square foot plot yields into tons per acre
bkr_tons_per_acre <- function(x){
  x/18*43560/2000
}

#' @return yields in tons per acre
#'
#' @param x yield (presumably dry) expressed in lbs
#'
#' @examples
#' ylds <- c(4.34,5.8, 2.76)
#' bkr_tons_per_acre(ylds)


