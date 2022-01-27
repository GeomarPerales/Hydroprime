#Para una estación
library(devtools)
install_github("GeomarPerales/RPisco")
library(RPisco)
library(openxlsx)

# MENSUAL
PISCO.file <- "D:\\PISCOm_pp_2.1.nc"  # netCDF de la variable
x <- data.frame(PISCO.file, -74.2258, -13.1605)
data <- piscom(x)

# exportación a excel
write.xlsx(data,"D:\\pp_mensual.xlsx") 
