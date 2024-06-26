#' configure and list trials for ccb BB, helpful precursor to pulling data

#' @param Function takes no arguments
#' @return A list of trials to be explored further via ```QBMS```
#' @export
#' @examples
#' open_ccb_breedbase()
#' QBMS::set_trial("2023")
#' QBMS::list_studies()
open_ccb_breedbase <- function(){
  QBMS::set_qbms_config("https://ncsu.breedbase.org/brapi/v1/calls/",
                        time_out = 300, no_auth = TRUE, engine = "breedbase")
  # QBMS::set_crop("Cassava")
  QBMS::set_program("LCCB")
  QBMS::list_trials()
}


