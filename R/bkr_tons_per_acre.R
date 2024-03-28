#' Yields in tons per acre assuming 18 ft^2 plot
#'
#' @param x A number
#'
#' @return A number
#' @export
#'
#' @examples
#' bkr_tons_per_acre(c(2.25, 6))
bkr_tons_per_acre <- function(x){

  x/18*43560/2000

  }
