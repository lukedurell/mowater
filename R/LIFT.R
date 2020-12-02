#' LIFT Wastewater Treatment Data
#'
#' The LIFT (Leaders Innovation Forum for Technology) data set
#' gives water quality measurements at numerous locations
#' in a water treatment facility. The facility is divided into
#' nine zones. Multiple probes are used measure dissolved oxygen,
#' ammonia, and nitrate.
#'
#'
#' @docType data
#'
#' @usage
#' LIFT
#' data(LIFT) # loads into working environment
#'
#' @format LIFT is an object of class \code{"data.frame"} with 25908
#' rows and 16 columns.
#'
#' @examples
#' ammonia <- LIFT[,11]
#' length(ammonia)
#' ts.plot(ammonia)
#' ts.plot(ammonia[24000:25908])
#' hist(ammonia)
#' hist(ammonia,breaks="FD")
"LIFT"
