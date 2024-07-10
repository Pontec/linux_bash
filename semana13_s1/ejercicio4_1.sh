#! /bin/bash

# De un número encontrar el factorial, indicar si es par e 
# indicar si es primo utilizando funciones.

# Función para calcular el factorial de un número
factorial() {
  num=$1
  fact=1

  for (( i=1; i<=num; i++ )); do
    fact=$((fact * i))
  done

  echo $fact
}

# Función para verificar si un número es par
es_par() {
  num=$1

  if (( num % 2 == 0 )); then
    echo "El número $num es par."
  else
    echo "El número $num es impar."
  fi
}

# Función para verificar si un número es primo
es_primo() {
  num=$1

  if (( num <= 1 )); then
    echo "El número $num no es primo."
    return
  fi

  for (( i=2; i*i<=num; i++ )); do
    if (( num % i == 0 )); then
      echo "El número $num no es primo."
      return
    fi
  done

  echo "El número $num es primo."
}

# Solicitar al usuario que ingrese un número
read -p "Por favor, ingresa un número: " numero

# Llamar a las funciones y mostrar los resultados
fact=$(factorial $numero)
echo "El factorial de $numero es $fact"

es_par $numero
es_primo $numero