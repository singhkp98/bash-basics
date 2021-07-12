#!/bin/bash

# SCRIPT CHE FORNITA UNA DIRECTORY RESTITUISCE LE INFORMAZIONI SOTTO RIPORTATE.

echo "Fornisci una directory:";
read dir; 
echo "il numero di file con dimensione minore di 1KB e': "
find $dir -size -1000 | wc -l;
echo "il numero di file con dimensione minore di 1MB e': "
find $dir -size -1000000 | wc -l;
echo "il numero di file con dimensione minore di 1GB e': "
find $dir -size -1000000000 | wc -l;
echo "il numero di file con dimensione maggiore di 1GB e': "
find $dir -size +1000000000 | wc -l;

