#! /bin/bash

# Realizar un script en Linux que permite realizar un menú de 6 alternativas que son: Debe ingresar un número y debe hallar su factorial.
# Debe ingresar un número y debe indicar si es perfecto o no.
# Debe ingresar dos números y debe indicar el cubo de cada número. Debe ingresar dos números y debe indicar si son pares o no.
# Debe ingresar una fecha, indicar cuantos días faltan para acabar el año. Debe indicar el mensaje “Es una alternativa incorrecta, no utilizada”
# Para realizar este script para las alternativas del A al E, se debe realizar con funciones.

# Función para calcular el factorial de un número
factorial() {
  num=$1
  fact=1

  if (( num < 0 ))
  then
    echo "Error: No se puede calcular el factorial de un número negativo."
    return 1
  fi

  for (( i=1; i<=num; i++ ))
  do
    fact=$((fact * i))
  done

  echo "Factorial de $num: $fact"
}

# Función para verificar si un número es perfecto
es_perfecto() {
  local num=$1
  local suma=0

  for (( i=1; i<num; i++ ))
  do
    if (( num % i == 0 ))
    then
      suma=$((suma + i))
    fi
  done

  if (( suma == num ))
  then
    echo "El número $num es perfecto."
  else
    echo "El número $num no es perfecto."
  fi
}

# Función para calcular el cubo de dos números
cubo() {
  num1=$1
  num2=$2

  cubo1=$((num1 * num1 * num1))
  cubo2=$((num2 * num2 * num2))

  echo "Cubo de $num1: $cubo1"
  echo "Cubo de $num2: $cubo2"
}

# Función para verificar si dos números son pares
son_pares() {
  num1=$1
  num2=$2

  if (( num1 % 2 == 0 )); then
    echo "El número $num1 es par."
  else
    echo "El número $num1 no es par."
  fi

  if (( num2 % 2 == 0 )); then
    echo "El número $num2 es par."
  else
    echo "El número $num2 no es par."
  fi
}

# Función para calcular los días restantes hasta fin de año
dias_restantes() {
  fecha=$1
  dia=$(date -d "$fecha" +%j)
  anio=$(date -d "$fecha" +%Y)
  dias_en_anio=$(( (anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0) ? 366 : 365 ))

  dias_restantes=$((dias_en_anio - dia))

  echo "Días restantes hasta fin de año: $dias_restantes"
}

# Mostrar el menú y obtener la elección del usuario
mostrar_menu() {
  echo "Seleccione una opción:"
  echo "A. Ingresar un número y hallar su factorial"
  echo "B. Ingresar un número y verificar si es perfecto"
  echo "C. Ingresar dos números y hallar el cubo de cada uno"
  echo "D. Ingresar dos números y verificar si son pares"
  echo "E. Ingresar una fecha y calcular los días restantes hasta fin de año"
  echo "F. Salir"
  read -p "Ingrese su elección: " eleccion
}

# Función principal para manejar el menú
menu_principal() {
  while true
  do
    mostrar_menu
    case $eleccion in
      A|a)
        read -p "Ingrese un número: " numero
        factorial $numero
        ;;
      B|b)
        read -p "Ingrese un número: " numero
        es_perfecto $numero
        ;;
      C|c)
        read -p "Ingrese el primer número: " numero1
        read -p "Ingrese el segundo número: " numero2
        cubo $numero1 $numero2
        ;;
      D|d)
        read -p "Ingrese el primer número: " numero1
        read -p "Ingrese el segundo número: " numero2
        son_pares $numero1 $numero2
        ;;
      E|e)
        read -p "Ingrese una fecha (YYYY-MM-DD): " fecha
        dias_restantes $fecha
        ;;
      F|f)
        echo "Saliendo..."
        break
        ;;
      *)
        echo "Es una alternativa incorrecta, no utilizada"
        ;;
    esac
  done
}

# Llamar a la función del menú principal
menu_principal