###########################################
##Eagle Mountain Lake
##Processing of Raw Data
###########################################

##--------------------------------------
## Clear working memory
##--------------------------------------
#- rm(list=ls())


##--------------------------------------
## Install and load any needed libraries
##--------------------------------------



##--------------------------------------
## Load the data
##--------------------------------------

setwd("/Users/lukedurell/Box Sync/education/research/mowater data upload/eml/raw")
temp<-read.csv(file="temp_through_09_12_2019.csv", header=T)
DO<-read.csv(file="DO_through_09_12_2019.csv", header=T)
DOsat<-read.csv(file="DOsat_through_09_12_2019.csv", header=T)
pH<-read.csv(file="pH_through_09_12_2019.csv", header=T)
cond<-read.csv(file="cond_through_09_12_2019.csv", header=T)
setwd("/Users/lukedurell/Box Sync/education/research/mowater")
dim(temp)
dim(DO)
dim(DOsat)
dim(pH)
dim(cond)

variable.names<-c("Obs","Date-Time","L0.0", "L0.5", "L1.0", "L1.5", "L2.0","L2.5","L3.0","L3.5","L4.0","L4.5","L5.0","L5.5","L6.0","L6.5","L7.0","L7.5","L8.0","L8.5","L9.0","L9.5","L10.0")

colnames(temp)<-variable.names
colnames(DO)<-variable.names
colnames(DOsat)<-variable.names
colnames(pH)<-variable.names
colnames(cond)<-variable.names



##--------------------------------------
## Replace the NAs with Average of
## Prior and Subsequent Value at same level
##--------------------------------------

NA.filler = function(raw.data){
	impute.data<-raw.data

	for(i in 3:23){
		miss<-which(is.na(raw.data[,i])==TRUE)
		to.average<-cbind(miss-1,miss+1)

		if(length(miss)>0){
		for(j in 1:length(miss)){
			to.impute<-mean(raw.data[to.average[j,],i],na.rm=TRUE)
			impute.data[miss[j],i]<-to.impute
		}}
	}

	return(impute.data)
}


#temp.I stands for "temp Imputed" as in the temperatures with the imputed values filled in
summary(temp)
temp.I<-NA.filler(temp)
summary(temp.I)
temp.I<-NA.filler(temp.I)
summary(temp.I)


summary(DO)
DO.I<-NA.filler(DO)
summary(DO.I)
DO.I<-NA.filler(DO.I)
summary(DO.I)


summary(DOsat)
DOsat.I<-NA.filler(DOsat)
summary(DOsat.I)
DOsat.I<-NA.filler(DOsat.I)
summary(DOsat.I)


summary(pH)
pH.I<-NA.filler(pH)
summary(pH.I)
pH.I<-NA.filler(pH.I)
summary(pH.I)


summary(cond)
cond.I<-NA.filler(cond)
summary(cond.I)
cond.I<-NA.filler(cond.I)
summary(cond.I)


##--------------------------------------
## Rearranging data to have variables
## in columns and observations in rows
## with depth as a new column
##--------------------------------------

#There are measurements at 21 depths for each date-time stamp.  We want to repeat each date-time stamp 21 times, each one associated with a different depth.

new.Date.Time.col<-rep(temp.I[,2],each=21)

depth<-seq(0,10,by=0.5)
new.depth.col<-rep(depth, dim(temp.I)[1])

temp.one.col<-c(t(as.matrix(temp.I[,3:23])))
DO.one.col<-c(t(as.matrix(DO.I[,3:23])))
DOsat.one.col<-c(t(as.matrix(DOsat.I[,3:23])))
pH.one.col<-c(t(as.matrix(pH.I[,3:23])))
cond.one.col<-c(t(as.matrix(cond.I[,3:23])))

all.data<-data.frame(new.Date.Time.col, new.depth.col, temp.one.col, DO.one.col, DOsat.one.col, pH.one.col, cond.one.col)

head(all.data)

colnames(all.data)<-c("Date-Time", "Depth", "Temp", "DO", "DOsat", "pH", "Cond")
head(all.data)
dim(all.data)

##--------------------------------------
## Save the imputed data
##
##--------------------------------------

saveRDS(all.data, file = "/Users/lukedurell/Box Sync/education/research/mowater data upload/eml/eml.RData")
# write.csv(all.data, file="data/clean/EML_through_09_12_2019.csv")






