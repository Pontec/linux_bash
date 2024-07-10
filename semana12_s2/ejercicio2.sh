#! /bin/bash

#Realizar un script que compare 4 números ingresados por 
#teclado e indicar cuál es el mayor.

echo "ingrese el primer numero:"
read numero1

echo "ingrese el segundo numero:"
read numero2

echo "ingrese el tercer numero:"
read numero3

echo "ingrese el cuarto numero:"
read numero4

mayor=$numero1

if [ $numero2 -gt $mayor ]; then
  mayor=$numero2
fi

if [ $numero3 -gt $mayor ]; then
  mayor=$numero3
fi

if [ $numero4 -gt $mayor ]; then
  mayor=$numero4
fi

# Imprimir el mayor número
echo "El mayor número es: $mayor"
