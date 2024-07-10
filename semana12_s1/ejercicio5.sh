#! /bin/bash

#	Muestre la carpeta de directorio actual 
#	Muestre el nombre del usuario que se está utilizando 
#	Cambie de ruta a la carpeta curso realizada en el ejercicio anterior 
#	Muestre la carpeta actual 
#	Mostrar el nombre de la computadora  
#   Mostrar el nombre de la Shell


# Mostrar la carpeta de directorio actual
echo "Carpeta actual: $(pwd)"

# Mostrar el nombre del usuario que se está utilizando
echo "Usuario actual: $USER"

# Cambiar de ruta a la carpeta curso realizada en el ejercicio anterior
cd curso

# Mostrar la carpeta actual
echo "Carpeta actual: $(pwd)"

# Mostrar el nombre de la computadora
echo "Nombre de la computadora: $(hostname)"

# Mostrar el nombre de la Shell
echo "Nombre de la Shell: $SHELL"