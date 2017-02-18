
#Reading the directory
pin = read.csv("all_india_PO_list_without_APS_offices_ver2_lat_long.csv", header = TRUE)
column  = c(1,2,5,8,9,12,12)

#Isolating the columns
Gujarat = pin[which(pin$statename == "GUJARAT"),column]
Karnataka = pin[which(pin$statename == "KARNATAKA"),column]
MadhyaPradesh = pin[which(pin$statename == "MADHYA PRADESH"),column]
Maharashtra = pin[which(pin$statename == "MAHARASHTRA"),column]
Rajasthan = pin[which(pin$statename == "RAJASTHAN"),column]
TamilNadu = pin[which(pin$statename == "TAMIL NADU"),column]
Kerala = pin[which(pin$statename == "KERALA"),column]

#Reading the pin and isolating taluk
mpPin = as.numeric(unlist(read.table("MPPin.txt", header = TRUE, sep = "\t")))
n = length(mpPin)
trial1 = matrix(0,nrow = n, ncol = n)
lengthVec = rep(0,n)
num = rep(0,n)
for(i in 1:n)
{
   print(droplevels(unique(MadhyaPradesh[which(MadhyaPradesh$pincode == mpPin[i]),4])))
}
