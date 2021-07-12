#!/bin/bash

# SCRIPT CHE STAMPA N VOLTE UNA STRINGA S, CON N E S PASSATI PER PARAMETRO 

NUM=$1
STR=$2 

if $1 -lt 1 
then 
    echo "Inserire numero maggiore di 0"
    exit 1
fi 
if -z $STR
then 
    echo "stringa non valida"
    exit 1
fi 

for i in $NUM
do 
    echo $STR
done 