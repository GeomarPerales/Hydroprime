#Para una estación
library(openxlsx)
library(RPisco)

# DIARIO
# netCDF de la variable
PISCO.file <- "D:\\PISCOd_pp_2.1.nc" 
x <- data.frame(PISCO.file, -76.2118, -10.5787)
data <- piscod(x)

# exportación a excel
write.xlsx(data,"D:\\pp_diaria.xlsx") 

# MENSUAL
# netCDF de la variable
PISCO.file <- "D:\\PISCOm_pp_2.1.nc" 
x <- data.frame(PISCO.file, -76.2301, -10.5754)
data <- piscom(x)

# exportación a excel
write.xlsx(data,"D:\\pp_mensual.xlsx")

