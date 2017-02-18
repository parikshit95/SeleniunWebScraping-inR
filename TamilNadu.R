data = read.table("Village_Locations_TamilNadu.txt", header = TRUE, sep = "\t")
Village = as.character(data[,8])
n = length(Village)
url_list_TamilNadu = rep(0,n)
for(i in 1:n)
{
 url_list_TamilNadu[i] = paste( "https://www.google.com/maps/place/",Village[i],"+Tamil +Nadu")
}
library("RSelenium")
startServer()
checkForServer()
remDr <- remoteDriver()
remDr$open()
#Openning the URLs
remDr$navigate("https://www.google.com/")

#########################
#Sites in Andhra Pradesh#
#########################
LatLong = rep(0,n)
for (i in 625:n) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url_list_TamilNadu[i])
  Sys.sleep(3)
  webElem <- remDr$findElement(using = 'class', "searchbox-searchbutton-container")
  webElem$clickElement()
  LatLong[i] = remDr$getCurrentUrl()	
  Sys.sleep(3)	
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "w"))

}
LatLong = unlist(LatLong)
