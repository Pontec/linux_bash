#! /bin/bash

for (( i=0; i < 100; i++))
do
    if [ $i -gt 5 ]
    then
        break
    fi
    echo $i    
done