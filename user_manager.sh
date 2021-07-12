#!/bin/bash

# SCRIPT CHE PRESO UNO USERNAME COME PARAMETRO, PERMETTE DI ESEGUIRE 3 OPERAZIONI: LIST-ADD-REMOVE

ACTION=$1 #azione da eseguire
USER=$2 #username

function print_usage() {
  echo "Usage: /exam/exercise7/user_manager.sh list/add/remove <username> "
}

if [ $# -ne 2 ]
then 
    print_usage
fi

case $1 in 
$1='list')
    cut -d: -f1 /etc/passwd
    ;;
$1='add')
    adduser $2
    ;;
$1='remove')
    userdel $2
    ;;
*)
    print_usage
    ;;
esac
