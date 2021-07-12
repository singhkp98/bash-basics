#!/bin/bash/

# script bash che stampa la lista di file di una determinata directory che hanno dimensione 
# minore della dimensione passata per parametro.

# usage: listfile <dirpath> <dimension>

if test $# -ne 2 # controllo se il numero di parametri passati a riga di comando è diverso da 2
then
    echo 'usage: list_by_size.sh <dirpath> <dimension>'
    exit 1 # uscita con errore
fi
if ! test -d $1 # controllo che il primo parametro passato per riga di comando sia una directory
then
    echo 'usage: list_by_size.sh <dirpath> <dimension>'
    exit 1 #uscita con errore
fi

for i in $1/* do # ciclo con la mia variabile i tutti i file della directory passata per riga di comando 
    if test -r $i -a -f $i # controllo che il file $i sia leggibile dall'utente e (-a = and) sia un file ordinario
    then
        size='wc -c < $i' # do il file $i come input al comando wc -c che restituisce la dimensione in byte e la salva in size
        if test $size -lt $2 # controllo che la dimensione sia minore del secondo paramentro passato per riga di comando
        then
            echo 'basename $i' has size $size bytes # stampo il nome del file seguito dalla sua dimensione in byte
        fi
    fi
done

exit 0 # uscita con successo 