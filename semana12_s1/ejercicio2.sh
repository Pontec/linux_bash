#! /bin/bash

#Realizar un script que permita: 
#Limpiar la pantalla
# Indicar la fecha actual
# Indicar la ruta en la cual está ejecutando el script 
#Crear una carpeta de nombre PRACTICA_CLASE 
#Listar los archivos y directorios de la ruta actual

clear

fecha=$(date +"%Y-%m-%d")
echo "Fecha actual: $fecha"

ruta=$(pwd)
echo "Ruta actual: $ruta"

mkdir PRACTICA_CLASE

ls -l