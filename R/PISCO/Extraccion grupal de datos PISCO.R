#Para un grupo de estaciones
library(openxlsx)
library(RPisco)

# DIARIO
# netCDF de la variable
PISCO.file <- "D:\\PISCOd_pp_2.1.nc" 
data <- read.xlsx("estaciones.xlsx") 
x <- data.frame(PISCO.file, data)
data <- piscodgroup(x)

# exportación a excel
write.xlsx(data,"D:\\ppg_diario.xlsx")

# MENSUAL
# netCDF de la variable
PISCO.file <- "D:\\PISCOm_pp_2.1.nc" 
data <- read.xlsx("estaciones.xlsx") 
x <- data.frame(PISCO.file, data)
data <- piscomgroup(x)

# exportación a excel
write.xlsx(data,"D:\\ppg_mensual.xlsx")
