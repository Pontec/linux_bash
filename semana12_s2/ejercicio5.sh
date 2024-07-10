#! /bin/bash

#Realizar un script que realice lo siguiente:
#Leer un número entre el 1 y el 20 e imprimir su equivalente 
#en números romanos.

echo "Ingrese el numero del (1 al 20): "
read numero

#validar el mes
if [ $numero -lt 0 -o $numero -gt 20 ]
then
    echo "Numero invalido, debe estar entre 1 y 20"
    exit 1
fi

case $numero in
    1) numeroRomano="I";;
    2) numeroRomano="II";;
    3) numeroRomano="III";;
    4) numeroRomano="IV";;
    5) numeroRomano="V";;
    6) numeroRomano="VI";;
    7) numeroRomano="VII";;
    8) numeroRomano="VIII";;
    9) numeroRomano="IX";;
    10) numeroRomano="X";;
    11) numeroRomano="XI";;
    12) numeroRomano="XII";;
    13) numeroRomano="XIII";;
    14) numeroRomano="XIV";;
    15) numeroRomano="XV";;
    16) numeroRomano="XVI";;
    17) numeroRomano="XVII";;
    18) numeroRomano="XVIII";;
    19) numeroRomano="XIX";;
    20) numeroRomano="XX";;
esac

echo "El numero romano es: "$numeroRomano