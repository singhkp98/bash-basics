#!/bin/bash/ 

# SCRIPT CHE RESTITUISCE 'OK' SE IL VALORE PASSATO PER PARAMETRO E' MINORE DI 100. 

if $# -nq 1
then 
    echo "numero parametri non valido"
fi

NUM=$1 

case $NUM in 
$NUM -gt 100)
    echo "grater then 100"
    ;;
$NUM -lt 100)
     echo "OK"
    ;;
*)
    echo "Not a number"
    ;;
esac