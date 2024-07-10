#! /bin/bash

# Función para calcular la suma de los divisores propios de 
#un número
suma_divisores() {
  num=$1
  suma=0

  for (( i=1; i<num; i++ )); do
    if (( num % i == 0 )); then
      suma=$((suma + i))
    fi
  done

  echo $suma
}

# Función para verificar si dos números son amigos
son_amigos() {
  num1=$1
  num2=$2

  suma_div_num1=$(suma_divisores $num1)
  suma_div_num2=$(suma_divisores $num2)

  if (( suma_div_num1 == num2 && suma_div_num2 == num1 ))
  then
    echo "Los números $num1 y $num2 son amigos."
  else
    echo "Los números $num1 y $num2 no son amigos."
  fi
}

# Verificar que se hayan pasado dos números como argumentos
if [ $# -ne 2 ]
then
  echo "Por favor, ingresa exactamente dos números como parámetros."
  exit 1
fi

# Llamar a la función son_amigos con los números proporcionados como argumentos
son_amigos $1 $2