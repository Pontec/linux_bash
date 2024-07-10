#! /bin/bash

# Dada una palabra que se ingresa como parámetros indicar si 
# dicha palabra es palíndroma mostrando el mensaje “la palabras
#  ……. Es palíndroma”. Si no lo es indicar un mensaje la “la 
# palabra ............ no es palíndroma”


# Función para verificar si una palabra es palíndroma
es_palindroma() {
  palabra="$1"
  reverso=""

  # Obtener el reverso de la palabra
  for (( i=${#palabra}-1; i>=0; i-- ))
  do
    reverso="$reverso${palabra:$i:1}"
  done

  # Comparar la palabra original con su reverso
  if [ "$palabra" == "$reverso" ]
  then
    echo "La palabra '$palabra' es palíndroma."
  else
    echo "La palabra '$palabra' no es palíndroma."
  fi
}

# Verificar que se haya pasado una palabra como argumento
if [ $# -eq 0 ]
then
  echo "Por favor, ingresa una palabra como parámetro."
  exit 1
fi

# Llamar a la función es_palindroma con la palabra proporcionada como argumento
es_palindroma "$1"