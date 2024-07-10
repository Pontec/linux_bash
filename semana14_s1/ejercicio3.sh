#! /bin/bash

# Definir las áreas de memoria libre
bloque_libre=(25 17 42 30 27 18 21 32)

# Definir los requerimientos de memoria de los procesos
procesos=(25 19 22 5)

# Imprimir la tabla inicial de áreas libres
echo "Tabla inicial de áreas libres: ${bloque_libre[*]} KB"

# Imprimir los requerimientos de memoria de los procesos
echo "Requerimientos de memoria de los procesos: ${procesos[*]} KB"

# Recorrer los requerimientos de memoria de los procesos
for (( i=0; i<${#procesos[@]}; i++ )); do
  proceso=${procesos[i]}
  asignado=false

  # Buscar un bloque libre que pueda contener el proceso
  for (( j=0; j<${#bloque_libre[@]}; j++ )); do
    if (( bloque_libre[j] >= proceso )); then
      echo "Proceso P$((i + 1)) asignado a bloque: ${bloque_libre[j]} KB"
      bloque_libre[j]=$(( bloque_libre[j] - proceso ))
      asignado=true
      break
    fi
  done

  if ! $asignado; then
    echo "No se puede asignar memoria para el proceso P$((i + 1)). No hay suficiente espacio disponible."
  fi
done

# Imprimir la tabla de áreas libres después de la asignación
echo "Tabla de áreas libres después de la asignación: ${bloque_libre[*]} KB"
