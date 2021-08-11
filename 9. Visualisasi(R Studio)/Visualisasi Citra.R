###Ekstraksi tif menjadi CSV###
library(raster)
library(sp)
library(rgdal)

#data =  "C:/Users/aalba/Downloads/skripsi/Subset_S1A_IW_GRDH_1SDV_10112019.tif"
#data = "C:/Users/aalba/Downloads/skripsi/Subset_S1A_IW_GRDH_1SDV_22112019.tif"
#data = "C:/Users/aalba/Downloads/skripsi/Subset_S1A_IW_GRDH_1SDV_13072019.tif"
data = "C:/Users/aalba/Downloads/skripsi/Subset_S1A_IW_GRDH_1SDV_25072019.tif"
x = new("GDALReadOnlyDataset", data)
image = data.frame (getRasterTable (x))
#outputfile =  "C:/Users/aalba/Downloads/skripsi/10_Nov.csv"
#outputfile = "C:/Users/aalba/Downloads/skripsi/22_Nov.csv"
#outputfile = "C:/Users/aalba/Downloads/skripsi/13_Juli.csv"
outputfile = "C:/Users/aalba/Downloads/skripsi/25_Juli.csv"
write.table (image, file = outputfile, sep = ",", row.names = F, col.names = T)


##Citra 13 Juli
#Baca CSV hasil prediksi
hasil_pred= read.table("C:/Users/aalba/Downloads/skripsi/hasil_prediksi_13Juli.csv", sep=",", header=TRUE)
hasil_pred = hasil_pred[,2:6]
#Membuat raster hasil prediksi
raster = stack("C:/Users/aalba/Downloads/skripsi/Subset_S1A_IW_GRDH_1SDV_13072019.tif")
data = getValues(raster)
data = as.data.frame(data)
values(raster) = hasil_pred$Class
plot(raster)
writeRaster(raster,"C:/Users/aalba/Downloads/skripsi/hasil_prediksi_13Juli.tif")
##Citra 25 Juli
#Baca CSV hasil prediksi
hasil_pred= read.table("C:/Users/aalba/Downloads/skripsi/hasil_prediksi_25Juli.csv", sep=",", header=TRUE)
hasil_pred = hasil_pred[,2:6]
#Membuat raster hasil prediksi
raster = stack("C:/Users/aalba/Downloads/skripsi/Subset_S1A_IW_GRDH_1SDV_25072019.tif")
data = getValues(raster)
data = as.data.frame(data)
values(raster) = hasil_pred$Class
plot(raster)
writeRaster(raster,"C:/Users/aalba/Downloads/skripsi/hasil_prediksi_25Juli.tif")

##Citra 10 Nov
#Baca CSV hasil prediksi
hasil_pred= read.table("C:/Users/aalba/Downloads/skripsi/hasil_prediksi_10Nov.csv", sep=",", header=TRUE)
hasil_pred = hasil_pred[,2:6]
#Membuat raster hasil prediksi
raster = stack("C:/Users/aalba/Downloads/skripsi/Subset_S1A_IW_GRDH_1SDV_10112019.tif")
data = getValues(raster)
data = as.data.frame(data)
values(raster) = hasil_pred$Class
plot(raster)
writeRaster(raster,"C:/Users/aalba/Downloads/skripsi/hasil_prediksi_10Nov.tif")

##Citra 22 Nov
#Baca CSV hasil prediksi
hasil_pred= read.table("C:/Users/aalba/Downloads/skripsi/hasil_prediksi_22Nov.csv", sep=",", header=TRUE)
hasil_pred = hasil_pred[,2:6]
#Membuat raster hasil prediksi
raster = stack("C:/Users/aalba/Downloads/skripsi/Subset_S1A_IW_GRDH_1SDV_22112019.tif")
data = getValues(raster)
data = as.data.frame(data)
values(raster) = hasil_pred$Class
plot(raster)
writeRaster(raster,"C:/Users/aalba/Downloads/skripsi/hasil_prediksi_22Nov.tif")
