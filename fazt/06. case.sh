#! /bin/bash

#  ;; representa como el break en otros lenguajes

echo "escoge entre el valor 1 o 2:"
read valor

case $valor in
    1)
        echo "tu escogiste el numero 1"
    ;;
    2)
        echo "tu escogiste el numero 2"
    ;;
    *)
        echo "valor incorrecto"
    ;;
esac