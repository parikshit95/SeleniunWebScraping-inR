### This script uses RCurl and RJSONIO to download data from Google's API:
### Latitude, longitude, location type (see explanation at the end), formatted address
### Notice ther is a limit of 2,500 calls per day

####Based on source: http://www.jose-gonzalez.org/using-google-maps-api-r
#Accessed May 25, 2016

library(RCurl)
library(RJSONIO)
library(plyr)
 
url <- function(address, return.call = "json", sensor = "false") {
 root <- "http://maps.google.com/maps/api/geocode/"
 u <- paste(root, return.call, "?address=", address, "&sensor=", sensor, sep = "")
 return(URLencode(u))
}
 
geoCode <- function(address,verbose=FALSE) {
 if(verbose) cat(address,"\n")
 u <- url(address)
 doc <- getURL(u)
 x <- fromJSON(doc,simplify = FALSE)
 if(x$status=="OK") {
 lat <- x$results[[1]]$geometry$location$lat
 lng <- x$results[[1]]$geometry$location$lng
 location_type <- x$results[[1]]$geometry$location_type
 formatted_address <- x$results[[1]]$formatted_address
 return(c(lat, lng, location_type, formatted_address))
 } else {
 return(c(NA,NA,NA, NA))
 }
}

#Reading and Compiling sites in Gujarat

data = read.table("Village_Locations_Gujarat.txt", header = TRUE, sep = "\t") 
District = as.character(data[,6])
Mandal = as.character(data[,7])
Village = as.character(data[,8])
n = length(Village)
list_Gujarat = rep(0,n)
for(i in 1:n)
{
 list_Gujarat[i] = paste(Village[i], "Gujarat")
}

#MAIN CALL OF FUNCTION
locations =  ldply(list_Gujarat,function(x) geoCode(x))
