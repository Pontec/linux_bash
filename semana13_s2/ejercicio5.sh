#! /bin/bash

# Realizar un script que realice lo siguiente:
# Ingresar 8 números determinar cuántos números repetidos 
# existen.

# Función para contar números repetidos en el arreglo
contar_repetidos() {
  declare -A contador
  repetidos=0

  # Contar la frecuencia de cada número en el arreglo
  for num in "${numeros[@]}"
  do
    ((contador[$num]++))
  done

  # Contar cuántos números tienen más de una aparición
  for count in "${contador[@]}"
  do
    if ((count > 1))
    then
      ((repetidos++))
    fi
  done
}

# Leer 8 números del usuario y almacenarlos en un arreglo
numeros=()
for (( i=1; i<=8; i++ ))
do
  read -p "Ingrese el número $i: " numero
  numeros+=($numero)
done

# Contar los números repetidos en el arreglo
contar_repetidos

# Mostrar el resultado
echo "Los números ingresados son: ${numeros[@]}"
echo "Cantidad de números repetidos: $repetidos"