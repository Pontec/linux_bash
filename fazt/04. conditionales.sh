#! /bin/bash

#  -eq  ---> es para la igualdad de enteros  - equal 
#  -ne  ---> deben ser enteros y no iguales  - Not equal
#  -ge  ---> A mayor o igual B               - Greater than or equal to
#  -le  ---> A menor o igual B               - Less than or equal to

#   ==   --> igualdad en cadena de texto

age=10

if [ $age -le 10 ]
then
    echo "el numero es igual: " $age
else
    echo "El numero no igual"
fi