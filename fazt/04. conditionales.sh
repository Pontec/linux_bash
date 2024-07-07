#! /bin/bash

#  -eq  ---> es para la igualdad de enteros
#  -ne  ---> deben ser enteros y no iguales
#  -ge  ---> A mayor o igual B
#  -le  ---> A menor o igual B

#   ==   --> igualdad en cadena de texto

age=10

if [ $age -le 10 ]
then
    echo "el numero es igual: " $age
else
    echo "El numero no igual"
fi