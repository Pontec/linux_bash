#! /bin/bash

# Ingresar un año e indicar si el año es bisiesto indicar el 
# mensaje “año bisiesto” y si no lo es indicar el mensaje 
# “año no bisiesto”


# Función para verificar si un año es bisiesto
es_bisiesto() {
  year=$1

  if (( year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) )); then
    echo "El año $year es bisiesto."
  else
    echo "El año $year no es bisiesto."
  fi
}

# Verificar que se haya pasado un año como argumento
if [ $# -eq 0 ]; then
  echo "Por favor, ingresa un año como parámetro."
  exit 1
fi

# Llamar a la función es_bisiesto con el año proporcionado como argumento
es_bisiesto $1