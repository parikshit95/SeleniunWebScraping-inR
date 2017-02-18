
data = read.CSV("Village_Locations_Gujarat.CSV", header = TRUE, sep = "\t")
Village = as.character(data[,8])
n = length(Village)

#START FROM HERE
url_list_Gujarat = rep(0,n)
for(i in 1:n)
{
 url_list_Gujarat[i] = paste( "https://www.google.com/maps/place/",Village[i],"+Gujarat")
}
library("RSelenium")
startServer()
checkForServer()
remDr <- remoteDriver()
remDr$open()
#Openning the URLs
remDr$navigate("https://www.google.com/")

##################
#Sites in Gujarat#
##################

LatLong = rep(0,n)
for (i in 1:100) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url_list_Gujarat[i])
  Sys.sleep(5)
  webElem <- remDr$findElement(using = 'class', "searchbox-searchbutton-container")
  webElem$clickElement()
  Sys.sleep(3)
  LatLong[i] = remDr$getCurrentUrl()	
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "w"))

}
LatLong = unlist(LatLong)
