#! /bin/bash

# Realizar un script en Linux para solucionar el algoritmo de 
# Planificación FCFS. Hallar la tabla final. Para lo cual se 
# utiliza la siguiente tabla:
# NOMBRE PROCESO    INSTANTE LLEGADA Ti     TIEMPO EJECUCIÓN T
#       A                   0                   4
#       B                   2                   3
#       C                   5                   2
#       D                   8                   4
#       E                   10                  3


# Definir las matrices para los procesos
nombres=("A" "B" "C" "D" "E")
llegadas=(0 2 5 8 10)
ejecuciones=(4 3 2 4 3)

# Inicializar variables
num_procesos=${#nombres[@]}
comienzos=()
finales=()
esperas=()

# Calcular la tabla FCFS
tiempo_actual=0

for (( i=0; i<num_procesos; i++ )); do
  # Comienzo del proceso
  if (( tiempo_actual < llegadas[i] )); then
    tiempo_actual=${llegadas[i]}
  fi
  comienzos[i]=$tiempo_actual
  
  # Fin del proceso
  finales[i]=$(( tiempo_actual + ejecuciones[i] ))
  
  # Tiempo en espera
  esperas[i]=$(( comienzos[i] - llegadas[i] ))
  
  # Actualizar el tiempo actual
  tiempo_actual=${finales[i]}
done

# Mostrar la tabla final
echo "Nombre Proceso | Instante Llegada | Tiempo Ejecución | Comienzo | Fin | Tiempo Espera"
for (( i=0; i<num_procesos; i++ )); do
  echo "${nombres[i]}               | ${llegadas[i]}                | ${ejecuciones[i]}                | ${comienzos[i]}        | ${finales[i]}  | ${esperas[i]}"
done