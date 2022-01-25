#Para un grupo de estaciones
library(openxlsx)
library(devtools)
install_github("GeomarPerales/RPisco")
library(RPisco)

##########################################################################
# DIARIO
# netCDF de la variable
PISCO.file <- "D:\\PISCOd_pp_2.1.nc" 
data <- read.xlsx("estaciones.xlsx") 
x <- data.frame(PISCO.file, data)
data <- piscodgroup(x)

# exportación a excel
write.xlsx(data,"D:\\pp_diaria.xlsx")

##########################################################################
# MENSUAL
# netCDF de la variable
PISCO.file <- "D:\\PISCOm_pp_2.1.nc" 
data <- read.xlsx("estaciones.xlsx") 
x <- data.frame(PISCO.file, data)
data <- piscomgroup(x)

# exportación a excel
write.xlsx(data,"D:\\pp_mensual.xlsx")

