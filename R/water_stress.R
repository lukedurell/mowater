#' Freshwater Withdrawals Data
#'
#' Water stress is measured based on freshwater withdrawals
#' as a share of internal (renewable) resources. The World Resources
#' Institute categorize water stress in the following ways: if
#' withdrawals are less than 10 percent of resources then a country
#' has low water stress; 10-20 percent is low-to-medium stress;
#' 20-40 percent is medium-to high stress; 40-80 percent is high stress;
#' and greater than 80 percent is extremely high stress.
#' Withdrawal rates in excess of 100 percent means that the country is
#' either extracting unsustainably from existing aquifer sources,
#' or producing a large share of water from desalinization.
#'
#' @docType data
#'
#' @usage
#' water_stress
#' data(water_stress) #- loads into working environment
#'
#' @format An object of class \code{"data.frame"} with 662 rows
#' and 4 variables including entity, code, year, and withdrawal amount.
#' \describe{
#'   \item{entity}{}
#'   \item{code}{}
#'   \item{year}{}
#'   \item{withdrawal}{Freshwater withdrawal as share of renewable resources}
#' }
#'
#' @references Unknown?
#'
#' @examples
#'
#' #- Nordic Countries
#' sweden <- water_stress[which(water_stress$entity == "Sweden"), ]
#' denmark <- water_stress[which(water_stress$entity == "Denmark"), ]
#' finland <- water_stress[which(water_stress$entity == "Finland"), ]
#' iceland <- water_stress[which(water_stress$entity == "Iceland"), ]
#'
#' cols = c("black", "yellow2", "turquoise4", "maroon4")
#' plot(sweden$year,
#' sweden$withdrawal,
#' type = "l",
#' ylim = c(0, 30),
#' col = cols[1],
#' xlab = "Year",
#' ylab = "% Withdrawal",
#' main = "Nordic Countries")
#' lines(denmark$year, denmark$withdrawal, col = cols[2])
#' lines(finland$year, finland$withdrawal, col = cols[3])
#' lines(iceland$year, iceland$withdrawal, col = cols[4])
#' legend("topright", c("SWE", "DNK", "FIN", "ISL"), col = cols, pch = "l", bg = "white")
# library(maps)
# library(viridis)
#
# country.names<-map('world', names=TRUE, plot=FALSE)
# last.decade<-which((water_stress$year>2010 & water_stress$year<2020)==TRUE)
#
# mm2<-match(country.names, water_stress$entity[last.decade])
#
# n.col<-10
# mycolors<-(viridis(10))[n.col:1]
# rates<-log(water_stress$withdrawal)[last.decade]
# ind=cut(rates,round(c(quantile(rates, c(0.10, 0.20,0.30, 0.40,0.50, 0.60,0.70, 0.80,0.90))),1),right=FALSE)
# thecolors=mycolors[ind[mm2]]
#
# map(database="world",names=TRUE,fill=TRUE,col=thecolors)
# legend('left',legend=levels(ind),2,fill=mycolors,cex=1.2, bty="n")
# title("2010-2019, Log Withdrawal",cex.main=1.5)
"water_stress"
