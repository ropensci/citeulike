#' Search CiteUlike.
#' @import RJSONIO
#' @param query query to give to API call.
#' @param url Base URL for the API call. Don't change.
#' @return Number of records in CiteULike associated with the search, and the 
#'  actual records.
#' @export
#' @examples \dontrun{
#' temp <- culsearch('evolution')
#' temp$numrecords # number of records
#' temp$records[1:3] # some of the actual records
#' }
culsearch <- function(query = NA,  
  url = 'http://www.citeulike.org/json/search/all?q=')
{
  url2 <- paste(url, query, sep='')
  message(url2)
  out <- fromJSON(url2)
  list(numrecords = length(out), 
       records = out)
}