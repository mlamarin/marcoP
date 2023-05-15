
#' read a JSON file
#'
#' @param path    						the path of the JSON config file
#' @inheritDotParams from_json
#'
#' @return the parsed JSON as a R data structure
#' @export
read_json <- function(path, ...) {
  from_json(readLines(path), ...)
}


#' write a JSON file, a wrapper around jsonlite::write_json with different defaults
#'
#' @param data        the data to write
#' @param path        the path of the JSON config file
#' @param auto_unbox  whether if the vectors of 1 element shoudl be written as a scalars,
#'                     i.e `"string" instead of ["string"]`
#' @param pretty			adds indentation whitespace to JSON output. 
#' 										Can be TRUE/FALSE or a number specifying the number of spaces to indent.
#' @param ...          passed to [jsonlite::write_json()]
#' @export
#' @keywords internal
write_json <- function(data, path, pretty = TRUE, auto_unbox = TRUE, ...) {
  jsonlite::write_json(data, path, pretty = pretty, auto_unbox = auto_unbox, ...)
}


#' parse a JSON string
#' 
#' @param json						a JSON string. 
#' @param strip_comments	whether to strip comments, cf [strip_comments()]
#' @param ...		passed to jsonlite::fromJSON
#' 
#' @return the decoded data structure, or NA if json is NA, or NULL if json is NULL
#' 
#' @export
from_json <- function(json, strip_comments = FALSE, ...) {
  if (!length(json)) return(NULL)
  if (length(json) == 1 && is.na(json)) return(json)
  
  if (strip_comments) {
    if (length(json) == 1) 
      json <- strsplit(json, '\n')[[1]]
    json <- strip_comments(json)
  }
  
  jsonlite::fromJSON(json, ...)
}



#' currently just a wrapper around jsonlite::toJSON
#' 
#' @inheritParams write_json
#' @param ...		passed to jsonlite::fromJSON
#' @export
to_json <- function(..., pretty = TRUE) {
  as.character(jsonlite::toJSON(..., pretty = pretty))
}
