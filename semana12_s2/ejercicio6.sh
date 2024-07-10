#! /bin/bash

# Realizar un script que realice lo siguiente:
# Mostrar los 10 primeros números de la secuencia de Fibonacci.

echo "Ingrese el numero de terminos de la secuencia de Fibonacci: "
read numero

#calculando Fibonacci
if [ $numero -le 0 ]
then
    echo "Tienes que ingresar un numero positivo"
    exit 1
fi

a=0
b=1

# Calcular y mostrar los términos de la secuencia
  for i in $(seq 1 $numero)
  do
    echo "$i. $a"

    # Calcular el siguiente término de la secuencia
    c=$((a + b))
    a=$b
    b=$c
  done