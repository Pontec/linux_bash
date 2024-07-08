#! /bin/bash

# Realizar un script que permita:
# Ingresar 5 números con el nombre del script. 
# Guarde el valor de cada número en una variable. 
# Muestre las 5 variables.

#Valida que no se ingresen mas de 5 argumentos
if [ $# -ne 5 ]; then
  echo "Error: Se deben ingresar 5 números como argumentos."
  exit 1
fi

# Almacenamiento de argumentos en variables

num1=$1
num2=$2
num3=$3
num4=$4
num5=$5

# Mostrar las variables

echo "Primer número: $num1"
echo "Segundo número: $num2"
echo "Tercer número: $num3"
echo "Cuarto número: $num4"
echo "Quinto número: $num5"





#   $#          --->    Número de parámetros introducidos
#   $*          --->    Todos los parámetros introducidos
#   $$          --->    PID del proceso
#   $?          --->    Estado de salida del último comando
#   $0          --->    Nombre del script
#   $1 - $9     --->    Argumentos en posiciones específicas
