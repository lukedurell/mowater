#' Texas Reservoir Supply
#'
#' The Texas reservoirs data set contains data on Texas reservoirs
#' capacity and supply. This data set represents the aggregated data of
#' all Texas reservoirs.
#'
#' @docType data
#'
#' @usage
#' tx_reservoirs
#' data(tx_reservoirs) #- loads into working environment
#'
#' @format An object of class \code{"data.frame"} with 31,678 rows and 5 variables
#' (definitions below are from https://www.waterdatafortexas.org/reservoirs/glossary)
#' \describe{
#'   \item{Date}{}
#'   \item{reservoir_storage}{The amount of water present in Texas reservoirs.}
#'   \item{conservation_storage}{The amount of water present within Texas
#'   reservoir's conservation pools. Conservation storage is sometimes
#'   referred to as normal or multipurpose storage (USACE 2018). If
#'   reservoir operations are based on a normal operating level,
#'   conservation storage is calculated based on the normal operating
#'   level. For reservoirs that share borders with another state or country
#'   then conservation storage refers only to the portion that belongs
#'   to Texas.}
#'   \item{percent_full}{The ratio of conservation storage to
#'   conservation capacity expressed as a percentage.}
#'   \item{conservation_capacity}{The capacity of Texas reservoir's
#'   conservation pools; if a reservoir is shared with another state
#'   or country then conservation capacity refers only to the portion
#'   that belongs to Texas.}
#' }
#'
#' @source Water Data for Texas, found at https://www.waterdatafortexas.org The Texas Water Development Board (TWDB) Water Science and Conservation group
#'
#' @example
#'
#' #- visualize
#' ts.plot(tx_reservoirs$percent_full)
"tx_reservoirs"
