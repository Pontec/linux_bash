#! /bin/bash

# Realizar un script que realice lo siguiente:
# Recibe un directorio como primer parámetro y un archivo 
# como segundo parámetro, Luego se debe validar que los 
# parámetros recibidos sean directorio y archivo conocidos, 
# finalmente copiar el archivo al directorio recibido.


# Verificar que se hayan pasado dos parámetros
if [ $# -ne 2 ]; then
  echo "Error: Se deben especificar dos argumentos: un directorio y un archivo."
  exit 1
fi

# Verificar que el primer parámetro sea un directorio existente
if [ ! -d "$1" ]; then
  echo "Error: El primer argumento debe ser un directorio existente."
  exit 1
fi

# Verificar que el segundo parámetro sea un archivo existente
if [ ! -f "$2" ]; then
  echo "Error: El segundo argumento debe ser un archivo existente."
  exit 1
fi

# Copiar el archivo al directorio
cp "$2" "$1"

# Mostrar mensaje de éxito
echo "Archivo copiado correctamente a $1."