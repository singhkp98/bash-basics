#!/bin/bash

#SCRIPT CHE PERMETTE DI ESEGUIRE OPERAZIONI DI RICERCA-INSTALLAZIONE-RIMOZIONE DI UN PACKAGE FORNITO COME PARAMETRO. 

PARAM1=$1 #nome del package
PARAM2=$2 #azione da interpretare

function print_usage() {
  echo "​Usage: package_manager.sh <packageName> <search/install/remove/info>"
}

if $# -ne 2
then 
    print_usage
fi

case $2 in 
$2='Search')
    yum search all $1
    ;;
$2='install')
    yum install $1
    ;;
$2='remove')
    yum remove $1
    ;;
$2='info')
    yum info $1
    ;;
*)
    echo "Invalid action"
    ;;
esac

