#! /bin/bash

# Realizar un script que realice lo siguiente:
# Dados 4 números, almacenarlos en un arreglo, luego obtener 
# la suma y el promedio de los valores almacenados.

# Función para calcular la suma de los valores en un arreglo
suma_arreglo() {
  suma=0
  for num in "${numeros[@]}"; do
    suma=$((suma + num))
  done
}

# Función para calcular el promedio de los valores en un arreglo
promedio_arreglo() {
  suma_arreglo
  cantidad=${#numeros[@]}
  if (( cantidad > 0 )); then
    promedio=$((suma / cantidad))
  else
    promedio=0
  fi
}

# Leer 4 números del usuario y almacenarlos en un arreglo
numeros=()
for (( i=1; i<=4; i++ )); do
  read -p "Ingrese el número $i: " numero
  numeros+=($numero)
done

# Calcular la suma y el promedio de los valores en el arreglo
suma_arreglo
promedio_arreglo

# Mostrar los resultados
echo "Los números ingresados son: ${numeros[@]}"
echo "La suma de los números es: $suma"
echo "El promedio de los números es: $promedio"