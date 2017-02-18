data = read.table("Village_Locations_MadhyaPradesh.txt", header = TRUE, sep = "\t")
Village = as.character(data[,8])
n = length(Village)
url_list_MadhyaPradesh = rep(0,n)
for(i in 1:n)
{
 url_list_MadhyaPradesh[i] = paste( "https://www.google.com/maps/place/",Village[i],"+Madhya +Pradesh")
}
library("RSelenium")
startServer()
checkForServer()
remDr <- remoteDriver()
remDr$open()
#Openning the URLs
remDr$navigate("https://www.google.com/")

########################
#Sites in MadhyaPradesh#
########################
LatLong = rep(0,n)
for (i in 1:n) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url_list_MadhyaPradesh[i])
  Sys.sleep(5)
  webElem <- remDr$findElement(using = 'class', "searchbox-searchbutton-container")
  webElem$clickElement()
  Sys.sleep(3)
  LatLong[i] = remDr$getCurrentUrl()	
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "w"))

}
LatLong = unlist(LatLong)
