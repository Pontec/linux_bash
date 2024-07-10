#! /bin/bash

# Script donde cada uno de los elementos que se pide debe ser variable

# Cree una carpeta de nombre “curso”.
# Ingresar a la carpeta curso.
# Crear un archivo de nombre “practica111.txt”.
# Cambiar los permisos de modo que el archivo tenga permisos de lectura para el usuario, lectura y ejecución para el grupo y escritura para otros.


# Nombre de la carpeta
carpeta="curso"

# Nombre del archivo
archivo="practica111.txt"

# Crear la carpeta
mkdir "$carpeta"

# Ingresar a la carpeta
cd "$carpeta"

# Crear el archivo
touch "$archivo"

# Cambiar permisos del archivo
chmod 642 "$archivo"
