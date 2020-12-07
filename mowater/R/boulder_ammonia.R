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
#' boulder_ammonia
#' data(boulder_ammonia) #- loads into working environment
#'
#' @format boulder_ammonia is an object of class \code{"data.frame"} with 25908
#' rows and 16 columns.
#'
#' @examples
#' ammonia <- boulder_ammonia[,11]
#' length(ammonia)
#' ts.plot(ammonia)
#' ts.plot(ammonia[24000:25908])
#' hist(ammonia)
#' hist(ammonia,breaks="FD")
"boulder_ammonia"
