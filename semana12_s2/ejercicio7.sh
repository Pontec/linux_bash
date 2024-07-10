#! /bin/bash

# Realizar el Promedio Final del Curso de Sistemas Operativos, 
# donde se ingresan 4 notas, las 3 primeras notas son de las 
# practicas calificadas y la última nota es del examen final, 
# el promedio de las cuatro notas deberá ser mayor a 12 para 
# que se muestre el mensaje “estudiante aprobado”, si el 
# promedio de las 4 notas es menor a 12 debe indicar 
# “estudiante reprobado”

echo "ingrese la primera nota: "
read nota1

echo "ingrese la segunda nota: "
read nota2

echo "ingrese la tercera nota"
read nota3

echo "ingrese la cuarta nota"
read nota4

promedio=$((( nota1 + nota2 + nota3 + nota4 ) /4 ))

if [ $promedio -ge 12 ]
then
    echo "Estudiante aprobado"
else
    echo "Estudiante desaprobado"
fi
