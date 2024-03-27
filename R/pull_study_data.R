#' Pull data from some study, simple helper function combining two QBMS functions

#' @return data from some study
#' @param x A string that is the name of a study available in Breedbase.
#' @examples
#' open_ccb_breedbase()
#' QBMS::set_trial("2023")
#' QBMS::list_studies()
#' pull_study_data("23WIWPALT")
#' lapply(c("23NYCCALT", "23NYHVALT"), pull_study_data)

pull_study_data <- function(x = "string"){
  QBMS::set_study(x)
  QBMS::get_study_data()
}
