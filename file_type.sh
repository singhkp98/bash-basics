#!/bin/bash

# SCRIPT CHE PASSATO IL NOME DI UN FILE PER PARAMETRO MI RESTITUISCE IL TIPO DI FILE (ASCII, PDF, MP4, etc)

FILE=$1

if [ $# -ne 1 ]
then 
    echo "Usage:/exam/exercise6/file_type.sh <file>"
fi

if [ ! -f $FILE -o ! -e $FILE ]
then 
    echo "File not found"
else
    file -b $1    
fi



