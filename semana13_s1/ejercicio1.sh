#! /bin/bash

# Realizar un script que realice lo siguiente: 
# Determine si un número es capicúa o no.


# Función para invertir un número
invertir_numero() {
  num=$1
  inverso=""
  
  while [ -n "$num" ]; do
    inverso="${num:0:1}$inverso"
    num="${num:1}"
  done

  echo $inverso
}

# Función para verificar si un número es capicúa
es_capicua() {
  num=$1
  inverso=$(invertir_numero $num)

  if [ "$num" == "$inverso" ]; then
    echo "El número $num es capicúa."
  else
    echo "El número $num no es capicúa."
  fi
}

# Verificar que se haya pasado un número como argumento
if [ $# -eq 0 ]; then
  echo "Por favor, ingresa un número como argumento."
  exit 1
fi

# Llamar a la función con el número proporcionado como argumento
es_capicua $1