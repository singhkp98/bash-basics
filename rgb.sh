#!/bin/bash

# SCRIPT CHE PRESO UN COLORE PER PARAMETRO RESTITUISCE LA STRINGA " COLOR IS 'NOME_COLORE_PARAMETRO' "

case $1 in 
red)
    echo "color is red"
    ;;
green)
    echo "color is green"
    ;;
blue)
    echo "color is blue"
    ;;
*)
    echo "Usage: rgb.sh <red/green/blue>"
    exit 255
    ;;
esac