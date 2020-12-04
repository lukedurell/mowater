#' Urban vs. Rural Improved Water Access Data
#'
#' The Urban vs. Rural data is a Time Series measuring water
#' availability in countries around the world. This data set contains
#' information on 205 entities from 1990 to 2015.
#'
#' @docType data
#'
#' @usage
#' urban_rural_water
#' data(urban_rural_water) # loads into working evironment
#'
#' @format An object of class \code{"data.frame"} with 5164 rows and
#' 7 columns:
#' \describe{
#'   \item{entity}{}
#'   \item{code}{}
#'   \item{year}{}
#'   \item{urban}{Percent of urban population with access to clean drinking water}
#'   \item{rural}{Percent of rural population with access to clean drinking water}
#'   \item{pop}{Entity population}
#' }
#'
#' @examples
#' #- compare proportion of urban access to rural acces in US
#' us <- urban_rural_water[which(urban_rural_water$entity == "United States"),]
#' mean(us$urban / us$rural)
#'
#' #-
#' cols = c("yellow2", "turquoise4", "maroon4")
#' eth <- urban_rural_water[which(urban_rural_water$entity == "Ethiopia"),]
#' plot(1:26, eth$rural, col = cols[2], type = "l", ylim = c(0,100))
#' lines(1:26, eth$urban, col = cols[3], type = "l")
#' legend("left", c("urban", "rural"), col = cols[3:2], pch = "l", bg = "white")
#'
"urban_rural_water"
