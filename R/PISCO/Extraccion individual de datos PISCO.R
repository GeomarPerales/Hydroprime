#Para una estación
library(openxlsx)
library(devtools)
install_github("GeomarPerales/RPisco")
library(RPisco)

##########################################################################
# DIARIO
# netCDF de la variable
PISCO.file <- "D:\\PISCOd_pp_2.1.nc" 
x <- data.frame(PISCO.file, -74.2258, -13.1605)
data <- piscod(x)

# exportación a excel
write.xlsx(data,"D:\\pp_diaria.xlsx") 


##########################################################################
# MENSUAL
# netCDF de la variable
PISCO.file <- "D:\\PISCOm_pp_2.1.nc" 
x <- data.frame(PISCO.file, -74.2258, -13.1605)
data <- piscom(x)

# exportación a excel
write.xlsx(data,"D:\\pp_mensual.xlsx")

