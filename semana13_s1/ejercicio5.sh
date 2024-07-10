#! /bin/bash

# indique si un número ingresado como parámetro es perfecto 
# o no; se dice que el número perfecto es perfecto s la suma 
# de sus divisiones es igual al número.


if [ $# -ne 1 ]; then
    echo "Uso: $0 <numero>"
    exit 1
fi

numero=$1
suma_divisores=0

for ((i=1; i<$numero; i++)); do
    if (($numero % $i == 0)); then
        suma_divisores=$(($suma_divisores + $i ))
    fi
done

if [ $suma_divisores -eq $numero ]; then
    echo "$numero es un número perfecto."
else
    echo "$numero no es un número perfecto."
fi