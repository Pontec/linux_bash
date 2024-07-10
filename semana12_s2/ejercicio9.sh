#! /bin/bash

# Realizar un script que realice lo siguiente:
# Compare dos archivos (ambos se reciben como parámetros) y 
#muestre cuál de ellos tiene mayor cantidad de líneas.

# Obtener el número de líneas de cada archivo
lineasArchivo1=$(wc -l < $1)
lineasArchivo2=$(wc -l < $2)

# Mostrar el archivo con mayor cantidad de líneas
if [ $lineasArchivo1 -gt $lineasArchivo2 ]; then
  echo "$1 tiene más líneas que $2."
elif [ $lineasArchivo1 -lt $lineasArchivo2 ]; then
  echo "$2 tiene más líneas que $1."
else
  echo "$1 y $2 tienen la misma cantidad de líneas."
fi
