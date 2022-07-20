#' Function to return Strava URLs. 
#' 
#' @param activity A vector of Strava activity IDs.  
#' 
#' @author Stuart K. Grange
#' 
#' @return Character vector the length of \code{activity}. 
#' 
#' @examples 
#' 
#' # Just print the base url
#' strava_url()
#' 
#' @export
strava_url <- function(activity = NA) {
  
  # The base url
  x <- "https://www.strava.com/activities/"
  
  # Add activity to url if desired
  if (!is.na(activity[1])) {
    x <- stringr::str_c(x, activity)
  }
  
  return(x)
  
}
