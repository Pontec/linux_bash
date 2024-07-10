#! /bin/bash

# Realizar un script que realice lo siguiente:
# Ingrese 6 números y determine cuantos números 
# repetidos tiene.

echo "Por favor, ingresa 6 números:"
read -a numeros

declare -A contador

for num in "${numeros[@]}"; do
  ((contador[$num]++))
done

# Determinar cuántos números están repetidos
repetidos=0
for count in "${contador[@]}"; do
  if [ $count -gt 1 ]; then
    ((repetidos++))
  fi
done

echo "Hay $repetidos números repetidos."