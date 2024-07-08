#! /bin/bash

#Mientras la condicion sea FALSA se ejecuta 
#las instrucciones

number=1
while [ $number -ge 10 ]
do
    echo $number
    number=$((number + 1 ))
done
