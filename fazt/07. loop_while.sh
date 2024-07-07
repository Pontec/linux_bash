#! /bin/bash

#Mientras la condicion sea verdadera se ejecuta 
#las instrcciones

number=1
while [ $number -le 10 ]
do
    echo $number
    number=$((number + 1 ))
done
