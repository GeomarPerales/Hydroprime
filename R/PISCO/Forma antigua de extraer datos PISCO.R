rm(list = ls())
#Instalar el paquete 
install.packages("raster") 
install.packages("ncdf4")
library(raster) #cargar el paquete
library(ncdf4) #cargar el paquete
##Comenzamos con la lectura de un archivo de dos columnas "longitud" y "latitud" (coordenadas geográficas)
long_lat <- read.csv("long_lat.csv", header = T)

### Incluimos a nuestro código el archivo *.nc de PISCO
raster_pp <- raster::brick("D:\\PISCOd_pp_2.1.nc")
## Se asignan las coordenadas al recién creado "long_lat"
sp::coordinates(long_lat) <- ~XX+YY
# El archivo que se genere a partir del .csv debe tener la misma proyección que la del archivo .nc de PISCO
raster::projection(long_lat) <- raster::projection(raster_pp)
# Se hace la extraccción de valores acorde a las coordenadas del archivo .csv
points_long_lat <- raster::extract(raster_pp[[1]], long_lat, cellnumbers = T)[,1]
data_long_lat <- t(raster_pp[points_long_lat])
colnames(data_long_lat) <- as.character(long_lat$NN)

# Guardamos los datos como "datosPISCO_mens.csv"
# El archivo guardará una tabla en donde las columnas muestran los puntos del archivo .csv y las columnas la precipitación mensual en mm
write.csv(data_long_lat, "PISCO_mens.csv", quote = F)