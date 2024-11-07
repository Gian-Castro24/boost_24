# Instalar paquete agricolae para análisis agrícola (si no lo tienes instalado)
install.packages("agricolae")

# Cargar las librerías necesarias
library("agricolae")

# Definir las dosis de fertilizante nitrogenado (factor)

dosis <- c(0,50,100)

# Definir el número de repeticiones
reps <- 5

# Crear el diseño completamente al azar
dca <- design.crd(trt = dosis, r = reps, seed = 123)

# Ver la estructura del diseño
print(dca)

# Mostrar la disposición de las parcelas experimentales
dca$book



# DBCA ---------------------------------------------------

 agricolae::design.ab(trt, r, serie = 2, design=c("rcbd","crd","lsd"),
                      seed = 0, kinds = "Super-Duper",first=TRUE,randomization=TRUE)

library(agricolae)
trt<-c(3,2) # factorial 3x2
outdesign <-design.ab(trt, r=5, serie=2)
book<-outdesign$book
head(book,10) # print of the field book


library(tidyverse)

book<-outdesign$book %>% 
  mutate(dosis = case_when(
    A == 1 ~ 0
    , A==2 ~ 50
    , A==3 ~ 100
  )) %>% 

