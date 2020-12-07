#' City of Denver, CO Filter Experiment
#'
#' The denver filters data set contains one year of filter data for
#' 16 different filters measured at 5 minute intervals
#' with the goal of comparing filters between each other and before/after
#' media replacement.
#'
#' @docType data
#'
#' @usage
#' denver_filters
#' data(denver_filters) #- loads into working environment
#'
#' @format An object of class \code{"list"} that contains one \code{"list"} of
#' sixteen filter data sets and one \code{"data.frame"} of a backwash data set.
#' Each filter data set has 105384 rows and five variables:
#' Date.time, flow, turbidity, head loss and filter run time. The
#' backwash data set has 3285 rows monitoring the backwash runs.
#' Start and end times and the filter used are recorded.
#'
#' @source Data from the Foothills Water Treatment Plant was supplied by
#' Andrea Song and Craig McGonagill of Denver Water.
#'
#' @examples
#' #- turbidity
#' #- July 16
#' filter2 <- denver_filters[[1]][[2]][14401:14688,]
#'
#' plot(filter2$fotft02_ai_ft02_ntu,
#' xlab = "Time",
#' ylab = "NTU",
#' main = "Filter 2",
#' ylim = c(0,.1),
#' pch = 16,
#' type = "l")
#'
#' #- run time
#' filter4 <- denver_filters[[1]][[4]]
#' plot(filter4$fotft04_gv_ft04_effluent_runtime,
#' ylab = "Runtime (hr)",
#' main = "Run time - Filter 4",
#' type = "l")
#'
"denver_filters"
