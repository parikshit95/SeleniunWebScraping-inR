data1 = read.csv("PINfin.csv",header = TRUE)
data2 = read.csv("all_india_PO_list_without_APS_offices_ver2_lat_long.csv", header = TRUE)
store= rep(0, length(data1[,1]))
for(i in 1: 712)
{
	 store[i] = which(data2$pincode == data1[i,])[1]
}

data3 = data2[c(store), c(2,8,9)]

table = write.table(data3, "dataTN.txt")
