#' DOC Baseflow
#'
#' The dissolved carbon data set is from the U. S. Geological Survey.
#' Dissolved organic carbon (DOC) in soils and water originates
#' from the degradation of organic matter from plants and
#' microorganisms. Processes altering forest
#' and vegetation life cycles may have an indirect effect on surface
#' water quality. In particular, DOC in streams can affect heterotrophic
#' processes, act as a source for the nutrient cycle, absorb sunlight
#' radiation, alter metal transport, and promote the production of
#' carcinogenic byproducts during water treatment.
#' This data set contains DOC measured in streams in the Rocky Mountains
#' during base-flow conditions in the months of September, October, and
#' November. Base-flow conditions are preferred because they are
#' more representative of the longer-term (annual to decadal)
#' impacts from forest disturbances and climate change,
#' rather than short-term impacts of precipitation, runoff events,
#' and snowmelt, which can occur at an hourly to monthly temporal scale.
#'
#' @docType data
#'
#' @usage
#' dissolved_carbon
#' data(dissolved_carbon) #- loads into working environment
#'
#' @format An object of class \code{"list"} with two \code{"lists"}:
#' \describe{
#'   \item{baseflow}{Spatial data with 32 variables including location,
#'   flow, landcover, and more.}
#'   \item{usgs}{Basic Station ID, location, and DOC data}
#' }
#'
#' @source Water Data for the Nation: The National Water Information System.
#' Available online: https://www.usgs.gov/water-data-nation-national-water-information-system
#' @import viridis
#' @example
#' viridis(1)
# @examples
# library(lubridate)
# library(viridis)
# library(fields)
#
# data <- dissolved_carbon$usgs
# sub_data <- data[which(year(data$Date) == 2002),]
# locs <- unique(sub_data$Station_ID)
#
# new.DOC<-NULL
# new.Long<-NULL
# new.Lat<-NULL
#
# for(i in 1:length(locs)){
#   dups<-which(sub_data$Station_ID==locs[i])
#   new.DOC[i]<-mean(sub_data$DOC[dups])
#   new.Long[i]<-sub_data$Longitude[dups[1]]
#   new.Lat[i]<-sub_data$Latitude[dups[1]]
# }
#
# quilt.plot(new.Long, new.Lat, new.DOC, col=viridis(40), xlim=c(-112, -101), ylim=c(34,42), main="DOC in 2002", cex.main=2)
# US(add=TRUE)
#
# den.lat<- 39.7392
# den.long<- -104.9903
# points(den.long, den.lat, col=2, pch=8, cex=1.5)
"dissolved_carbon"
