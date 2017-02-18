library(RCurl)
library(RJSONIO)
library(plyr)
library(RSelenium)
#--------------------------------------------------------------------------
#Make Vector --> URL --> Geocode --> Selenium n-times?

#########################
#Sites in Andhra Pradesh#
#########################
data = read.table("Village_Locations_AndhraPradesh.txt", header = TRUE, sep = "\t")
Village = as.character(data[,8])
n = length(Village)
url_list_AndhraPradesh = rep(0,n)

for(i in 1:n)
{
 list_AndhraPradesh[i] = paste(Village[i], "Andhra Pradesh")
}

##########
#API CODE#
##########

url <- function(address, return.call = "json", sensor = "false") {
 root <- "https://www.google.com/maps/place/"
 u <- paste(root, return.call, "?address=", address, "&sensor=", sensor, sep = "")
 return(URLencode(u))
}
 
geoCode <- function(address,verbose=FALSE) {
 if(verbose) cat(address,"\n")
 u <- url(address)
 doc <- getURL(u)
 x <- fromJSON(u,simplify = FALSE)
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


##########
#Selenium#
##########

startServer()
checkForServer()
remDr <- remoteDriver()
remDr$open()
#Openning the URLs
remDr$navigate("https://www.google.com/")


LatLong = rep(0,n)
for (i in 1:5) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url_list_AndhraPradesh[i])
  Sys.sleep(5)
  webElem <- remDr$findElement(using = 'class', "searchbox-searchbutton-container")
  webElem$clickElement()
  Sys.sleep(3)
  LatLong[i] = remDr$getCurrentUrl()	
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "w"))
}



LatLong = unlist(LatLong)


locations =  ldply(LatLong,function(x) geoCode(x))





