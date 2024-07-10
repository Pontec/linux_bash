#! /bin/bash

#Realizar un script que, dado un mes, devolver el mes en 
#etras.


echo "Ingrese el numero del mes (1 a 12): "
read numeroMes

#validar el mes
if [ $numeroMes -lt 0 -o $numeroMes -gt 12 ]
then
    echo "Numero de mes invalido"
    exit 1
fi

case $numeroMes in
    1)  echo "Enero";;
    2)  echo "Febrero";;
    3)  echo "Marzo";;
    4)  echo "Abril";;
    5)  echo "Mayo";;
    6)  echo "Junio";;
    7)  echo "Julio";;
    8)  echo "Agosto";;
    9)  echo "Septiembre";;
    10) echo "Octubre";;
    11) echo "Noviembre";;
    12) echo "Diciembre";;
esac