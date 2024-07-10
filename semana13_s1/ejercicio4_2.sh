#! /bin/bash

# Ingrese un nombre y apellido, luego debe mostrar los 
# nombres al revés. Ejemplo: Diego Luna debe mostrar 
# anuL ogeiD

# Solicitar al usuario que ingrese un nombre y apellido
read -p "Por favor, ingresa tu nombre y apellido: " nombre_apellido

# Separar el nombre y apellido
nombre=$(echo $nombre_apellido | cut -d' ' -f1)
apellido=$(echo $nombre_apellido | cut -d' ' -f2-)

# Invertir el nombre y el apellido
nombre_invertido=$(echo $nombre | rev)
apellido_invertido=$(echo $apellido | rev)

# Mostrar los nombres invertidos
echo "Nombre invertido: $nombre_invertido"
echo "Apellido invertido: $apellido_invertido"