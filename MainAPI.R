### This script uses RCurl and RJSONIO to download data from Google's API:
### Latitude, longitude, location type (see explanation at the end), formatted address
### Notice ther is a limit of 2,500 calls per day

####Based on source: Gonzalez, Jose C. URL <http://www.jose-gonzalez.org/using-google-maps-api-r>
#Accessed May 25, 2016
#------------------------------------------------------------------------------------------------

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
###############################################
#Reading and Compiling sites in Andhra Pradesh#
###############################################

data = read.table("Village_Locations_AndhraPradesh.txt", header = TRUE, sep = "\t") 
District = as.character(data[,6])
Mandal = as.character(data[,7])
Village = as.character(data[,8])
n = length(Village)
list_AndhraPradesh = rep(0,n)
for(i in 1:n)
{
 list_AndhraPradesh[i] = paste(Village[i], "Andhra Pradesh")
}
locations_AndhraPradesh =  ldply(list_AndhraPradesh,function(x) geoCode(x))

########################################
#Reading and Compiling sites in Gujarat#
########################################

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
locations_Gujarat =  ldply(list_Gujarat,function(x) geoCode(x))

##########################################
#Reading and Compiling sites in Karnataka#
##########################################

data = read.table("Village_Locations_Karnataka.txt", header = TRUE, sep = "\t") 
District = as.character(data[,6])
Mandal = as.character(data[,7])
Village = as.character(data[,8])
n = length(Village)
list_Karnataka = rep(0,n)
for(i in 1:n)
{
 list_Karnataka[i] = paste(Village[i], "Karnataka")
}
locations_Karnataka =  ldply(list_Karnataka,function(x) geoCode(x))

#######################################
#Reading and Compiling sites in Kerala#
#######################################

data = read.table("Village_Locations_Kerala.txt", header = TRUE, sep = "\t") 
District = as.character(data[,6])
Mandal = as.character(data[,7])
Village = as.character(data[,8])
n = length(Village)
list_Kerala = rep(0,n)
for(i in 1:n)
{
 list_Kerala[i] = paste(Village[i], "Kerala")
}
locations_Kerala =  ldply(list_Kerala,function(x) geoCode(x))


##############################################
#Reading and Compiling sites in MadhyaPradesh#
##############################################

data = read.table("Village_Locations_MadhyaPradesh.txt", header = TRUE, sep = "\t") 
District = as.character(data[,6])
Mandal = as.character(data[,7])
Village = as.character(data[,8])
n = length(Village)
list_MadhyaPradesh = rep(0,n)
for(i in 1:n)
{
 list_MadhyaPradesh[i] = paste(Village[i], "MadhyaPradesh")
}
locations_MadhyaPradesh =  ldply(list_MadhyaPradesh,function(x) geoCode(x))

############################################
#Reading and Compiling sites in Maharashtra#
############################################

data = read.table("Village_Locations_Maharashtra.txt", header = TRUE, sep = "\t") 
District = as.character(data[,6])
Mandal = as.character(data[,7])
Village = as.character(data[,8])
n = length(Village)
list_Maharashtra = rep(0,n)
for(i in 1:n)
{
 list_Maharashtra[i] = paste(Village[i], "Maharashtra")
}
locations_Maharashtra =  ldply(list_Maharashtra,function(x) geoCode(x))


##########################################
#Reading and Compiling sites in Rajasthan#
##########################################


data = read.table("Village_Locations_Rajasthan.txt", header = TRUE, sep = "\t") 
District = as.character(data[,6])
Mandal = as.character(data[,7])
Village = as.character(data[,8])
n = length(Village)
list_Rajasthan = rep(0,n)
for(i in 1:n)
{
 list_Rajasthan[i] = paste(Village[i], "Rajasthan")
}
locations_Rajasthan =  ldply(list_Rajasthan,function(x) geoCode(x))

##########################################
#Reading and Compiling sites in TamilNadu#
##########################################

data = read.table("Village_Locations_TamilNadu.txt", header = TRUE, sep = "\t") 
District = as.character(data[,6])
Mandal = as.character(data[,7])
Village = as.character(data[,8])
n = length(Village)
list_TamilNadu = rep(0,n)
for(i in 1:n)
{
 list_TamilNadu[i] = paste(Village[i], "TamilNadu")
}
locations_TamilNadu =  ldply(list_TamilNadu,function(x) geoCode(x))


