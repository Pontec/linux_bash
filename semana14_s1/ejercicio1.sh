#! /bin/bash

# Realizar un script en Linux que permite realizar un menú de 4 alternativas que son:
# A. Debe ingresar un número y debe hallar su factorial.
# B. Debe ingresar dos números y debe indicar la raíz cuadrada de cada número.
# C. Debe ingresar dos números y debe indicar si son pares o no.
# D. Debe ingresar dos números y deba indicar si son primos o no.
# Para realizar este script, cada una de las alternativas se debe realizar con funciones.

# Función para calcular el factorial de un número
factorial() {
  num=$1
  fact=1
  for (( i=1; i<=num; i++ ))
  do
    fact=$((fact * i))
  done
  echo "El factorial de $num es $fact"
}

# Función para calcular la raíz cuadrada de dos números
raiz_cuadrada() {
  num1=$1
  num2=$2
  raiz1=$(echo "scale=2; sqrt($num1)" | bc)
  raiz2=$(echo "scale=2; sqrt($num2)" | bc)
  echo "La raíz cuadrada de $num1 es $raiz1"
  echo "La raíz cuadrada de $num2 es $raiz2"
}

# Función para verificar si dos números son pares
son_pares() {
  num1=$1
  num2=$2
  if (( num1 % 2 == 0 ))
  then
    echo "$num1 es par"
  else
    echo "$num1 es impar"
  fi
  if (( num2 % 2 == 0 ))
  then
    echo "$num2 es par"
  else
    echo "$num2 es impar"
  fi
}

# Función para verificar si un número es primo
es_primo() {
  num=$1
  if (( num < 2 ))
  then
    echo "$num no es primo"
    return
  fi
  for (( i=2; i*i<=num; i++ ))
  do
    if (( num % i == 0 ))
    then
      echo "$num no es primo"
      return
    fi
  done
  echo "$num es primo"
}

# Función para verificar si dos números son primos
son_primos() {
  num1=$1
  num2=$2
  es_primo $num1
  es_primo $num2
}

# Menú principal
while true; do
  echo "Menú de opciones:"
  echo "A. Ingresar un número y hallar su factorial."
  echo "B. Ingresar dos números y hallar la raíz cuadrada de cada uno."
  echo "C. Ingresar dos números y verificar si son pares."
  echo "D. Ingresar dos números y verificar si son primos."
  echo "E. Salir."
  read -p "Elija una opción (A/B/C/D/E): " opcion

  case $opcion in
    A|a)
      read -p "Ingrese un número: " num
      factorial $num
      ;;
    B|b)
      read -p "Ingrese el primer número: " num1
      read -p "Ingrese el segundo número: " num2
      raiz_cuadrada $num1 $num2
      ;;
    C|c)
      read -p "Ingrese el primer número: " num1
      read -p "Ingrese el segundo número: " num2
      son_pares $num1 $num2
      ;;
    D|d)
      read -p "Ingrese el primer número: " num1
      read -p "Ingrese el segundo número: " num2
      son_primos $num1 $num2
      ;;
    E|e)
      echo "Saliendo..."
      break
      ;;
    *)
      echo "Opción incorrecta, por favor elija una opción válida."
      ;;
  esac
  echo
done
