#! /bin/bash

age=20

# 18 < age < 40

# && --> operandor AND
# || --> operador OR

#sintaxis que realiza lo mismo
#if [[ $age -gt 18 &&  $age -lt 40 ]]

if [ $age -gt 18 ] &&  [ $age -lt 40 ]
then
    echo "Edad valida"
else
    echo "Edad no valida"
fi