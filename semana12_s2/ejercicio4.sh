#! /bin/bash

# Realizar un script que, Dada una fecha, determine cuantos 
# días faltan para que acabe el año.

dias_restantes() {
  fecha=$1
  dia=$(date -d "$fecha" +%j)
  anio=$(date -d "$fecha" +%Y)
  dias_en_anio=$(( (anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0) ? 366 : 365 ))

  dias_restantes=$((dias_en_anio - dia))

  echo "Días restantes hasta fin de año: $dias_restantes"
}

read -p "Ingrese una fecha (YYYY-MM-DD): " fecha
dias_restantes $fecha