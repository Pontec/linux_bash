#! /bin/bash

# Realizar un script que realice lo siguiente:
# Ingrese un número, obtener la suma de pares e impares de 
# los primeros N números enteros positivos.

# Solicitar al usuario el número N
echo "Ingrese un número entero positivo (N): "
read n

# Validar que N sea un número entero positivo
if [ $n -le 0 ]; then
  echo " N debe ser un número entero positivo."
  exit 1
fi

# Inicializar variables para almacenar sumas
sumaPares=0
sumaImpares=0

# Recorrer los primeros N números enteros positivos
for ((i = 1; i <= n; i++)); do
  # Determinar si el número es par o impar
  if [ $(($i % 2)) -eq 0 ]; then
    # Si es par, sumarlo a la suma de pares
    sumaPares=$((sumaPares + $i))
  else
    # Si es impar, sumarlo a la suma de impares
    sumaImpares=$((sumaImpares + $i))
  fi
done

# Mostrar las sumas de pares e impares
echo "Suma de pares: $sumaPares"
echo "Suma de impares: $sumaImpares"