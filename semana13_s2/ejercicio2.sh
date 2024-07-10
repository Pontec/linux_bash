#! /bin/bash

# Realizar un script que realice lo siguiente:
# Dados 4 números, almacenados en un arreglo, luego indicar 
# el número mayor y el número menor.

# Función para encontrar el número mayor y menor en un arreglo
encontrar_mayor_menor() {
  mayor=${numeros[0]}
  menor=${numeros[0]}

  for num in "${numeros[@]}"; do
    if (( num > mayor )); then
      mayor=$num
    fi
    if (( num < menor )); then
      menor=$num
    fi
  done
}

# Leer 4 números del usuario y almacenarlos en un arreglo
numeros=()
for (( i=1; i<=4; i++ )); do
  read -p "Ingrese el número $i: " numero
  numeros+=($numero)
done

# Encontrar el número mayor y menor en el arreglo
encontrar_mayor_menor

# Mostrar los resultados
echo "Los números ingresados son: ${numeros[@]}"
echo "El número mayor es: $mayor"
echo "El número menor es: $menor"