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
library("RSelenium")
startServer()
checkForServer()
remDr <- remoteDriver()
remDr$open()
#Openning the URLs
remDr$navigate("https://www.google.com/")

url_list_Andhra = c("https://www.google.com/maps/place/Atmakur,+Andhra+Pradesh","https://www.google.com/maps/place/Rekulakunta,+Andhra+Pradesh", "https://www.google.com/maps/place/Ramgiri,+Andhra+Pradesh","https://www.google.com/maps/place/Pultar,+Andhra+Pradesh", "https://www.google.com/maps/place/Kaduvukallu,+Andhra+Pradesh","https://www.google.com/maps/place/Kaduvukallu,+Andhra+Pradesh","https://www.google.com/maps/place/Tadipatri,+Andhra+Pradesh","https://www.google.com/maps/place/Vajrakarur,+Andhra+Pradesh","https://www.google.com/maps/place/Nallakonda,+Andhra+Pradesh", "https://www.google.com/maps/place/Gandikota,+Andhra+Pradesh","https://www.google.com/maps/place/Gandikota,+Andhra+Pradesh","https://www.google.com/maps/place/Kondameedipalli,+Andhra+Pradesh","https://www.google.com/maps/place/Petnikota,+Andhra+Pradesh","https://www.google.com/maps/place/Burgul,+Andhra+Pradesh")
n =length(url_list_Andhra)
latLongList = rep(0,n)
for (url in url_list_Andhra) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url)
  Sys.sleep(10) 
  print(remDr$getCurrentUrl())	
}

##################
#Sites in Gujarat#
##################

library("RSelenium")
startServer()
checkForServer()
remDr <- remoteDriver()
remDr$open()
#Openning the URLs
remDr$navigate("https://www.google.com/")

url_list_Gujarat = c("https://www.google.com/maps/place/Jodhpur,+Gujarat","https://www.google.com/maps/place/Mota Gunda,+Gujarat", "https://www.google.com/maps/place/Lamba,+Gujarat","https://www.google.com/maps/place/Bhuj,+Gujarat")  
for (url in url_list_Gujarat) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url)
  Sys.sleep(5) 
  print(remDr$getCurrentUrl())	
}


#Site names derived from the Project Name, Description and Abstract 
url_list_Gujarat2 = c("https://www.google.com/maps/place/Chotila,+Gujarat","https://www.google.com/maps/place/Kotadapitha,+Gujarat","https://www.google.com/maps/place/Kotiya,+Gujarat", "https://www.google.com/maps/place/Vacchu,+Gujarat","https://www.google.com/maps/place/Baradiya,+Gujarat","https://www.google.com/maps/place/Lalpur,+Gujarat", "https://www.google.com/maps/place/Lathedi,+Gujarat","https://www.google.com/maps/place/Jakhau,+Gujarat", "https://www.google.com/maps/place/Kadoli,+Gujarat","https://www.google.com/maps/place/Vanku,+Gujarat", "https://www.google.com/maps/place/Arikhana,+Gujarat", "https://www.google.com/maps/place/Rajpargarh,+Gujarat","https://www.google.com/maps/place/Juna Kataria,+Gujarat", "https://www.google.com/maps/place/Chandrodi,+Gujarat", "https://www.google.com/maps/place/Sinoi,+Gujarat", "https://www.google.com/maps/place/Amaliyara,+Gujarat","https://www.google.com/maps/place/Kamand,+Gujarat","https://www.google.com/maps/place/Naransari,+Gujarat","https://www.google.com/maps/place/Surajbari,+Gujarat", "https://www.google.com/maps/place/Shikarapur,+Gujarat","https://www.google.com/maps/place/Jangi,+Gujarat","https://www.google.com/maps/place/Kosha,+Gujarat","https://www.google.com/maps/place/Jamamwada,+Gujarat","https://www.google.com/maps/place/Moti Sindodhi ,+Gujarat","https://www.google.com/maps/place/Charopadi Nani,+Gujarat","https://www.google.com/maps/place/Ber Nani,+Gujarat","https://www.google.com/maps/place/Vandhiya,+Gujarat", "https://www.google.com/maps/place/Ratadi,+Gujarat","https://www.google.com/maps/place/Visvada,+Gujarat","https://www.google.com/maps/place/Gosa,+Gujarat","https://www.google.com/maps/place/Adodar,+Gujarat","https://www.google.com/maps/place/Khisara,+Gujarat","https://www.google.com/maps/place/Khisara,+Gujarat","https://www.google.com/maps/place/Vadali,+Gujarat","https://www.google.com/maps/place/Halumati,+Gujarat","https://www.google.com/maps/place/Dhun Dhoraji,+Gujarat","https://www.google.com/maps/place/Jasdan,+Gujarat","https://www.google.com/maps/place/Wankaner,+Gujarat","https://www.google.com/maps/place/Vershamedi,+Gujarat","https://www.google.com/maps/place/Chotila,+Gujarat")          
for (url in url_list_Gujarat2) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url)
  Sys.sleep(5) 
  print(remDr$getCurrentUrl())
}


###########################
#Karnataka Abstract Column#
###########################

library("RSelenium")
startServer()
checkForServer()
remDr <- remoteDriver()
remDr$open()
#Openning the URLs
remDr$navigate("https://www.google.com/")

#Karnataka 1
url_list_Karnataka1 = c("https://www.google.com/maps/place/Devangere,+Karnataka","https://www.google.com/maps/place/Bangalore Rural,+Karnataka", "https://www.google.com/maps/place/Belgaum,+Karnataka", "https://www.google.com/maps/place/Bellary,+Karnataka", "https://www.google.com/maps/place/Chitradurga,+Karnataka", "https://www.google.com/maps/place/Skandagiri,+Karnataka", "https://www.google.com/maps/place/Swarna Kappatagudda,+Karnataka" , "https://www.google.com/maps/place/Thimmappanagudda,+Karnataka", "https://www.google.com/maps/place/Mavinahunda,+Karnataka", "https://www.google.com/maps/place/Hanumanhatti,+Karnataka", "https://www.google.com/maps/place/Hargapurgad,+Karnataka", "https://www.google.com/maps/place/Channenadaddi,+Karnataka", "https://www.google.com/maps/place/Chikkodi,+Karnataka", "https://www.google.com/maps/place/Sogi,+Karnataka", "https://www.google.com/maps/place/Jogimatti,+Karnataka", "https://www.google.com/maps/place/Jajikalgudda,+Karnataka", "https://www.google.com/maps/place/Kappatguda,+Karnataka", "https://www.google.com/maps/place/Gajanur,+Karnataka", "https://www.google.com/maps/place/Ayanahalli,+Karnataka", "https://www.google.com/maps/place/Haltimmall,+Karnataka", "https://www.google.com/maps/place/Hospet,+Karnataka", "https://www.google.com/maps/place/Sogi,+Karnataka" , "https://www.google.com/maps/place/Halu Timmalapur,+Karnataka", "https://www.google.com/maps/place/Sindgiri,+Karnataka", "https://www.google.com/maps/place/Kurugodu,+Karnataka", "https://www.google.com/maps/place/Chickkasiddavanahalli,+Karnataka", "https://www.google.com/maps/place/Borenhalli,+Karnataka", "https://www.google.com/maps/place/Mathigatta,+Karnataka", "https://www.google.com/maps/place/Nandana Hosura,+Karnataka", "https://www.google.com/maps/place/H.D. Pura,+Karnataka", "https://www.google.com/maps/place/Thalya,+Karnataka", "https://www.google.com/maps/place/Elekuranahalli,+Karnataka", "https://www.google.com/maps/place/Hosagurga,+Karnataka", "https://www.google.com/maps/place/Madhakaripura,+Karnataka", "https://www.google.com/maps/place/Gundikree,+Karnataka", "https://www.google.com/maps/place/Budhuipura,+Karnataka", "https://www.google.com/maps/place/Palavanhalli,+Karnataka", "https://www.google.com/maps/place/Kurumardikere,+Karnataka", "https://www.google.com/maps/place/Gopalpura,+Karnataka", "https://www.google.com/maps/place/Hiriyur,+Karnataka", "https://www.google.com/maps/place/Chikkasiddavanhalli,+Karnataka", "https://www.google.com/maps/place/Kurumardikere,+Karnataka", "https://www.google.com/maps/place/Gonur,+Karnataka", "https://www.google.com/maps/place/Elladakere,+Karnataka")
for (url in url_list_Karnataka1) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url)
  Sys.sleep(5) 
  print(remDr$getCurrentUrl())
}

#Look for Karanataka2 in Excel file
url_list_Karnataka2 = c("https://www.google.com/maps/place/Budipura,+Karnataka", "https://www.google.com/maps/place/Nakikere,+Karnataka", "https://www.google.com/maps/place/Elladakere,+Karnataka", "https://www.google.com/maps/place/Lakkihatti,+Karnataka", "https://www.google.com/maps/place/Bhimasamudra,+Karnataka", "https://www.google.com/maps/place/Nandanhosur,+Karnataka", "https://www.google.com/maps/place/Elkurnahalli,+Karnataka", "https://www.google.com/maps/place/Anehalu,+Karnataka","https://www.google.com/maps/place/Bettenaganahalli,+Karnataka", "https://www.google.com/maps/place/Tuppadahalli,+Karnataka", "https://www.google.com/maps/place/Chikkasiddavanhalli,+Karnataka", "https://www.google.com/maps/place/Gangarakatte,+Karnataka","https://www.google.com/maps/place/Teertharampura,+Karnataka","https://www.google.com/maps/place/Naraginakere,+Karnataka","https://www.google.com/maps/place/Naraginakere,+Karnataka","https://www.google.com/maps/place/Kudrekonda,+Karnataka","https://www.google.com/maps/place/Banakuppa,+Karnataka", "https://www.google.com/maps/place/Samydravalli,+Karnataka","https://www.google.com/maps/place/Chaudanahalli,+Karnataka","https://www.google.com/maps/place/Basavapatna,+Karnataka", "https://www.google.com/maps/place/Anabaru,+Karnataka","https://www.google.com/maps/place/Arasingundi,+Karnataka","https://www.google.com/maps/place/Channagiri,+Karnataka","https://www.google.com/maps/place/Bharmasagar,+Karnataka","https://www.google.com/maps/place/Harpanahalli,+Karnataka","https://www.google.com/maps/place/Kudurekonda,+Karnataka","https://www.google.com/maps/place/Jaglur,+Karnataka")       
for (url in url_list_Karnataka2) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url)
  Sys.sleep(5) 
  print(remDr$getCurrentUrl())

}

#Look for Karanataka3 in Excel file
url_list_Karnataka3 = c("https://www.google.com/maps/place/Gangavansara,+Karnataka", "https://www.google.com/maps/place/Gangavansara,+Karnataka", "https://www.google.com/maps/place/Gangavansara,+Karnataka", "https://www.google.com/maps/place/Kappa,+Karnataka", "https://www.google.com/maps/place/Kalkeri,+Karnataka", "https://www.google.com/maps/place/Mustikopa,+Karnataka", "https://www.google.com/maps/place/Devgoudvanahalli,+Karnataka","https://www.google.com/maps/place/Nagthibasapur,+Karnataka"  "https://www.google.com/maps/place/Shivalingahalli,+Karnataka", "https://www.google.com/maps/place/Thimmappanagudda,+Karnataka","https://www.google.com/maps/place/Hirevadatti,+Karnataka","https://www.google.com/maps/place/Kappatagudda,+Karnataka","https://www.google.com/maps/place/Belathadi,+Karnataka", "https://www.google.com/maps/place/Kappatagudda,+Karnataka", "https://www.google.com/maps/place/Kurthkoti,+Karnataka", "https://www.google.com/maps/place/Malasamudra,+Karnataka", "https://www.google.com/maps/place/Nargund,+Karnataka","https://www.google.com/maps/place/Gajendragad,+Karnataka","https://www.google.com/maps/place/Kappatagudda,+Karnataka", "https://www.google.com/maps/place/Mundargi,+Karnataka","https://www.google.com/maps/place/Gajendragad,+Karnataka", "https://www.google.com/maps/place/Kappatagudda,+Karnataka", "https://www.google.com/maps/place/Kappatagudda,+Karnataka", "https://www.google.com/maps/place/Kappatagudda,+Karnataka","https://www.google.com/maps/place/Harthi Kurtakoti,+Karnataka", "https://www.google.com/maps/place/Malasamudra,+Karnataka","https://www.google.com/maps/place/Kappatagudda,+Karnataka","https://www.google.com/maps/place/Gajendragarh,+Karnataka","https://www.google.com/maps/place/Unachagere,+Karnataka","https://www.google.com/maps/place/Chennagiri,+Karnataka", "https://www.google.com/maps/place/Kappatagudda,+Karnataka", "https://www.google.com/maps/place/Kappatagudda,+Karnataka", "https://www.google.com/maps/place/Jalvadgi,+Karnataka", "https://www.google.com/maps/place/Keluru,+Karnataka", "https://www.google.com/maps/place/Kappatagudda,+Karnataka", "https://www.google.com/maps/place/Kappatagudda,+Karnataka")
for (url in url_list_Karnataka3) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url)
  Sys.sleep(5) 
  print(remDr$getCurrentUrl())
}

#Look for Karanataka4 in Excel file

url_list_Karnataka4 = c("https://www.google.com/maps/place/Chaginakeri,+Karnataka", "https://www.google.com/maps/place/Kapatgudda,+Karnataka", "https://www.google.com/maps/place/Kalaspur,+Karnataka", "https://www.google.com/maps/place/Kalaspur,+Karnataka", "https://www.google.com/maps/place/Yelisirur,+Karnataka", "https://www.google.com/maps/place/Aidahalli Kava,+Karnataka", "https://www.google.com/maps/place/Rangapurakavalu,+Karnataka", "https://www.google.com/maps/place/Rangapurakavalu,+Karnataka", "https://www.google.com/maps/place/Kavalu,+Karnataka","https://www.google.com/maps/place/Haltimmall,+Karnataka","https://www.google.com/maps/place/Golapura,+Karnataka", "https://www.google.com/maps/place/Kundur,+Karnataka","https://www.google.com/maps/place/Holenarasipura,+Karnataka","https://www.google.com/maps/place/Kalmangi,+Karnataka","https://www.google.com/maps/place/Kalmangi,+Karnataka", "https://www.google.com/maps/place/Kalmangi,+Karnataka","https://www.google.com/maps/place/Kalmangi,+Karnataka","https://www.google.com/maps/place/Kalmangi,+Karnataka","https://www.google.com/maps/place/Eachanal,+Karnataka", "https://www.google.com/maps/place/Gangakette,+Karnataka","https://www.google.com/maps/place/Shikaripura,+Karnataka","https://www.google.com/maps/place/Shiganahalu,+Karnataka","https://www.google.com/maps/place/Chikkabyaladakere,+Karnataka","https://www.google.com/maps/place/Kanubehalli,+Karnataka","https://www.google.com/maps/place/Arasinagundi,+Karnataka", "https://www.google.com/maps/place/Dasagudi,+Karnataka", "https://www.google.com/maps/place/Nelenuru,+Karnataka","https://www.google.com/maps/place/Gandalu,+Karnataka","https://www.google.com/maps/place/Somanahalli,+Karnataka","https://www.google.com/maps/place/Bhorankanive,+Karnataka","https://www.google.com/maps/place/Chikkanayakanahalli,+Karnataka")
for (url in url_list_Karnataka4) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url)
  Sys.sleep(5) 
  print(remDr$getCurrentUrl())
}

########################
#Kerela Abstract Column#
########################
library("RSelenium")
startServer()
checkForServer()
remDr <- remoteDriver()
remDr$open()
#Openning the URLs
remDr$navigate("https://www.google.com/")

url_list_Kerela = c("https://www.google.com/maps/place/Kuruvikananm,+Kerela", "https://www.google.com/maps/place/Karunapuram,+Kerela","https://www.google.com/maps/place/Parathodu,+Kerela", "https://www.google.com/maps/place/Parathode,+Kerela","https://www.google.com/maps/place/Ramakalmedu,+Kerela", "https://www.google.com/maps/place/Cumbum,+Kerela","https://www.google.com/maps/place/Agali,+Kerela","https://www.google.com/maps/place/Kanjikode,+Kerela","https://www.google.com/maps/place/Kottathara,+Kerela","https://www.google.com/maps/place/Agali,+Kerela") 
for (url in url_list_Kerela) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url)
  Sys.sleep(5) 
  print(remDr$getCurrentUrl())
}


################################
#Madhya Pradesh Abstract Column#
################################
url_list_Madhya Pradesh = c("https://www.google.com/maps/place/Pal Nagar,+Madhya Pradesh", "https://www.google.com/maps/place/Palsodi,+Madhya Pradesh", "https://www.google.com/maps/place/Jamgod,+Madhya Pradesh","https://www.google.com/maps/place/Nagda Hills,+Madhya Pradesh","https://www.google.com/maps/place/Rajoda,+Madhya Pradesh","https://www.google.com/maps/place/Dewas Jamod,+Madhya Pradesh","https://www.google.com/maps/place/Dewas Jamgod,+Madhya Pradesh","https://www.google.com/maps/place/Ratedi,+Madhya Pradesh","https://www.google.com/maps/place/Pal Nagar,+Madhya Pradesh","https://www.google.com/maps/place/Palsodi,+Madhya Pradesh","https://www.google.com/maps/place/Jaora,+Madhya Pradesh","https://www.google.com/maps/place/Jethana,+Madhya Pradesh","https://www.google.com/maps/place/Jaora,+Madhya Pradesh","https://www.google.com/maps/place/Barod,+Madhya Pradesh","https://www.google.com/maps/place/Mahuria,+Madhya Pradesh","https://www.google.com/maps/place/Barariya,+Madhya Pradesh","https://www.google.com/maps/place/Mahuria,+Madhya Pradesh")
for (url in url_list_Madhya Pradesh) {
  webElem <- remDr$findElement("css", "html")
  webElem$sendKeysToElement(list(key="control", "t"))
  remDr$navigate(url)
  Sys.sleep(5) 
  print(remDr$getCurrentUrl())
}









 












 


