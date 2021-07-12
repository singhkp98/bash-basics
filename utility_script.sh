#!/bin/bash

# SCRIPT UTILITY CHE PERMETTE DI ESEGUIRE LE SOTTOELENCATE OPERAZIONI DEL MENU: 

echo "MENU UTILITY ";
echo "Scegliere una fra le seguenti opzioni:";
echo " ";
echo "1) Visualizza i processi dell'utente corrente";
echo "2) Esegui kill su un processo (pid da utente)";
echo "3) Kill -9 su un processo (pid da utente)";
echo "4) Mostrare l’elenco degli utenti che hanno almeno un processo attivo nel sistema";

read opt;
if [ $opt -lt 1 -o $opt -gt 4 ]
then
echo "La scelta effettuata non e' valida";
fi

case $opt in
1) echo "inserire il proprio nome utente: ";
read username; ps -u $username ;;
2) echo "inserire il PID del processo da killare: ";
read pid; kill $pid ;;
3) echo "inserire il PID del processo da killare:";
read pid2; kill -9 $pid2 ;;
4) compgen -u | ps -aux | less ;;
esac