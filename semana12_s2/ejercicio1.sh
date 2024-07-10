#! /bin/bash

#Realizar un script que dado un numero entero, si el número 
#es positivo que indique el mensaje número positivo, si es 
#negativo que indique el mensaje numero negativo y si es 0 
#que indique es un número neutro.

echo "Ingrese un numero"
read numero

if [ $numero -gt 0 ]
then 
    echo "Numero Positivo"
elif [ $numero -lt 0 ]
then
    echo "Numero Negativo"
else
    echo "Numero Neutro"
fi
