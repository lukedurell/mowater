#' Vegetation Bin Filter Experiment
#'
#' The bins data set comes from the Arizona Bureau of Reclamation, who
#' operated 7 pilot-scale vertical flow treatment wetlands (VFTW)
#' systems in order to identify the best treatment configuration for
#' reverse osmosis brine. Grab samples were sampled intermittently
#' between 10/20/2010 and 9/19/2017 for each treatment train (“bins”).
#' Influent and effluent samples were analyzed onsite for conductivity,
#' dissolved oxygen (DO), oxidation reduction potential (ORP), pH, and
#' temperature. A subset of those samples were sent for offsite
#' analysis, including total dissolved solids (TDS), sulfate, chloride,
#' metals, nitrogen, phosphorus, chemical oxygen demand (COD), and dissolved
#' organic carbon (DOC).
#'
#' @docType data
#'
#' @usage
#' bins
#' data(bins)
#'
#' @format An object of class \code{"data.frame"} with 3414 rows and 29 columns.
#' The variables include an id to specify bin, a Date variable, and numerous
#' analysis variables like temperature and chemical components.
#'
#' @source Katie Guerra and Chris Waechter from the Bureau
#' of Reclamation’s Goodyear, AZ Pilot Wetlands.
#'
#' @examples
#' #- selenium across treatment
#' plot(bins$Date,
#'      bins$selenium,
#'      col=as.factor(bins$id), pch=16,
#'      xlab="Date", ylab="Selenium")
#' IDNames<- unique(bins$id)
#' legend("topleft",
#'        pch=16, col = 1:7,
#'        legend = IDNames
#'        , inset=c( .05,.05) , ncol=2, bty="n" )
#' title("Selenium by treatment")
#'
#' #- flow measurements for Bin 1
#' Bin1 <- bins[which(bins$id == "Bin1"), ]
#' matplot( Bin1$Date, Bin1[,c("inflow", "outflow") ],
#'          col=c("grey", "red"), type="p", pch=16,
#'          xlab="Date", ylab="Flow"
#' )
#' legend("topleft",
#'        pch=16, col =c("grey", "red") ,
#'        legend =  c("Inflow", "Outflow")
#'        , inset=c( .05,.05), bty="n" )
#' title( "Bin1 flow measurments")
#'
"bins"
