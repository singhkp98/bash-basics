#!/bin/bash

# SCRIPT CHE CONTA IL NUMERO DI RIGHE IN UN FILE PASSATO PER PARAMETRO. 

if ! file $1 -f
then
    echo non è un file ordinario
    exit 1
fi 
if ! file -e 
then
    echo il file non esiste
    exit 1

num_righe = 'wc -l < $1'
echo num_righe
exit 0;