#Para un grupo de estaciones
library(devtools)
install_github("GeomarPerales/RPisco")
library(RPisco)
library(openxlsx)

# DIARIO
PISCO.file <- "D:\\PISCOd_pp_2.1.nc"# netCDF de la variable
data <- read.xlsx("estaciones.xlsx") 
x <- data.frame(PISCO.file, data)
data <- piscomgroup(x)

# exportación a excel
write.xlsx(data,"D:\\pp_grupo_mensual.xlsx")
