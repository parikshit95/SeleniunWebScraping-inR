library("RSelenium")
startServer()
checkForServer()
remDr <- remoteDriver()
remDr$open()
#Openning the URLs
remDr$navigate("https://www.google.com/")


#Sites in Andhra Pradesh
url_list_Andhra = c("https://www.google.com/maps/place/Atmakur,+Andhra+Pradesh","https://www.google.com/maps/place/Rekulakunta,+Andhra+Pradesh", "https://www.google.com/maps/place/Ramgiri,+Andhra+Pradesh","https://www.google.com/maps/place/Pultar,+Andhra+Pradesh", "https://www.google.com/maps/place/Kaduvukallu,+Andhra+Pradesh","https://www.google.com/maps/place/Kaduvukallu,+Andhra+Pradesh","https://www.google.com/maps/place/Tadipatri,+Andhra+Pradesh","https://www.google.com/maps/place/Vajrakarur,+Andhra+Pradesh","https://www.google.com/maps/place/Nallakonda,+Andhra+Pradesh", "https://www.google.com/maps/place/Gandikota,+Andhra+Pradesh","https://www.google.com/maps/place/Gandikota,+Andhra+Pradesh","https://www.google.com/maps/place/Kondameedipalli,+Andhra+Pradesh","https://www.google.com/maps/place/Petnikota,+Andhra+Pradesh","https://www.google.com/maps/place/Burgul,+Andhra+Pradesh")
n =length(url_list_Andhra)
latLongList = rep(0,n)
for (url in url_list_Andhra) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url)
  Sys.sleep(1) 
  print(remDr$getCurrentUrl())	
}