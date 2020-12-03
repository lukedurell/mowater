#' Colorado River Total Dissolved Solids
#'
#' Time series of total dissolved solids in the Colorado river, measured at Lees and Hoover dams.
#'
#' @docType data
#'
#' @usage data(tds_rivers)
#'
#' @format An object of class \code{"data.frame"} with 672 rows
#' and 4 variables: year, date, tds in Lees and Hoover dams.
#'
#' @source Unknown
#'
#' @examples
#' plot(tds_rivers$Date.Time, tds_rivers$lees, type = "l")
"tds_rivers"
