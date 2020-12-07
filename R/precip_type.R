#' Precipitation Study: predictors
#'
#' The precipitation type data set is a collection of data on weather
#' conditions across the continental United States and Alaska.
#'
#' @docType data
#'
#' @usage data(precip_type)
#'
#' @format An object of class \code{"list"} with two \code{"lists"}:
#' \describe{
#'   \item{precip}{Station location and temperature data.}
#'   \item{predictors}{Temperature profiles, dates, locations, and precipitation type.}
#' }
#'
#' @source Michael Scheuerer from NOAA’s Earth System Research Laboratories (ESRL) division, The US National Atmospheric and Oceanic Administration (NOAA) [https://www.ncdc.noaa.gov]
#'
# profiles for Waco airport
# library(viridis)
#
# which(precip_type$predictors$stations == "KACT    ")
# waco_index <- which(precip_type$predictors$station.ind == 26)
# waco_profiles <- precip_type$predictors$Twb.prof[waco_index,]
# cols <- viridis(length(waco_index))
# plot(waco_profiles[1,] ,1:31, type = "l",
#      xlim = c(260, 300), col = cols[1],
#      xlab = "", ylab = "")
# for (i in 2:length(waco_index)) {
#   lines(waco_profiles[i,], 1:31, col = cols[i])
# }
"precip_type"
