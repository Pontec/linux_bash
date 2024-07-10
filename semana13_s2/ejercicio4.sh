#! /bin/bash

# Realizar un script que realice lo siguiente:
# Ingresar 6 números, almacenarlos en un arreglo, luego 
# deben ser ordenados de menor a mayor.

# Función para ordenar el arreglo de menor a mayor usando el algoritmo de burbuja
ordenar_arreglo() {
  local n=${#numeros[@]}
  for ((i = 0; i < n; i++)); do
    for ((j = 0; j < n-i-1; j++)); do
      if ((numeros[j] > numeros[j+1])); then
        # Intercambiar
        temp=${numeros[j]}
        numeros[j]=${numeros[j+1]}
        numeros[j+1]=$temp
      fi
    done
  done
}

# Leer 6 números del usuario y almacenarlos en un arreglo
numeros=()
for (( i=1; i<=6; i++ )); do
  read -p "Ingrese el número $i: " numero
  numeros+=($numero)
done

# Ordenar el arreglo de menor a mayor
ordenar_arreglo

# Mostrar el resultado
echo "Los números ingresados ordenados de menor a mayor son: ${numeros[@]}"