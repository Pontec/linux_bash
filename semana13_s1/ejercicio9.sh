#! /bin/bash

#De un número encontrar el factorial, indicar si es par e 
#indicar si es primo utilizando funciones.

# Función para calcular el factorial de un número
function calcularFactorial() {
  # Validar que se haya pasado un número entero positivo como argumento
  if [ ! "$1" -eq "$1" ] || [ $1 -lt 0 ]; then
    echo "Error: Se debe especificar un número entero positivo."
    return 1
  fi

  # Inicializar variables para el factorial
  factorial=1
  contador=1

  # Calcular el factorial utilizando un bucle while
  while [ $contador -le $1 ]; do
    factorial=$((factorial * contador))
    contador=$((contador + 1))
  done

  # Retornar el factorial
  echo "$factorial"
}

# Función para determinar si un número es par
function esPar() {
  # Validar que se haya pasado un número entero como argumento
  if [ ! "$1" -eq "$1" ]; then
    echo "Error: Se debe especificar un número entero."
    return 1
  fi

  # Verificar si el residuo de la división por 2 es 0
  if [ $(($1 % 2)) -eq 0 ]; then
    echo "Sí"
  else
    echo "No"
  fi
}

# Función para determinar si un número es primo
function esPrimo() {
  # Validar que se haya pasado un número entero positivo como argumento
  if [ ! "$1" -eq "$1" ] || [ $1 -lt 2 ]; then
    echo "Error: Se debe especificar un número entero positivo mayor o igual a 2."
    return 1
  fi

  # Si el número es 2, es primo
  if [ $1 -eq 2 ]; then
    echo "Sí"
    return 0
  fi

  # Dividir el número por todos los números enteros desde 2 hasta la raíz cuadrada del número
  for ((i = 2; i <= $(echo "sqrt($1)" | bc); i++)); do
    if [ $(($1 % $i)) -eq 0 ]; then
      echo "No"
      return 0
    fi
  done

  # Si no se encontraron divisores, el número es primo
  echo "Sí"
}

# Solicitar al usuario que ingrese un número
echo "Ingrese un número: "
read numero

# Calcular el factorial del número
factorial=$(calcularFactorial "$numero")
echo "El factorial de $numero es: $factorial"

# Determinar si el número es par
esPar "$numero"

# Determinar si el número es primo
esPrimo "$numero"