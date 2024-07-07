#! /bin/bash

#Se puede utilizar doble (( )) para al momento de la
#comparacion se asemeje mas a leguajes comunes

age=1

if (( $age > 18))
then 
    echo "Eres un adulto"
elif (( $age >= 17 ))
then
    echo "ya casi eres un adulto"
else
    echo "Eres menor de edad"
fi
