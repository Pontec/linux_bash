#! /bin/bash

# Dada la nota promedio de un alumno, obtener la categoría, 
# según la siguiente tabla:
#       PROMEDIO        CATEGORIA
# Entre     0       y       5       Pésimo
# Entre     6       y       10      Malo
# Entre     11      y       14      Regular
# Entre     15      y       17      Bueno
# Entre     18      y       20      Excelente

echo "Ingrese una nota promedio: "
read nota

if [ $nota -le 5 ]
then
  categoria="Pésimo"
elif [ $nota -le 10 ]
then
  categoria="Malo"
elif [ $nota -le 14 ]
then
  categoria="Regular"
elif [ $nota -le 17 ]
then
  categoria="Bueno"
elif [ $nota -le 20 ]
then
  categoria="Bueno"
else
  categoria="Ingrese una nota valida"
fi

echo $categoria