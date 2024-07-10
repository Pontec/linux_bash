#! /bin/bash

# Realizar un script que realice lo siguiente:
# Dados 6 números, almacénelos en un arreglo, luego obtenga 
#cuantos números múltiplos de 2 se ha ingresado al arreglo

# Función para contar los números múltiplos de 2 en un arreglo
contar_multiplos_de_2() {
  contador=0
  for num in "${numeros[@]}"
  do
    if (( num % 2 == 0 ))
    then
      contador=$((contador + 1))
    fi
  done
}

# Leer 6 números del usuario y almacenarlos en un arreglo
numeros=()
for (( i=1; i<=6; i++ ))
do
  read -p "Ingrese el número $i: " numero
  numeros+=($numero)
done

# Contar los números múltiplos de 2 en el arreglo
contar_multiplos_de_2

# Mostrar el resultado
echo "Los números ingresados son: ${numeros[@]}"
echo "Cantidad de números múltiplos de 2: $contador"