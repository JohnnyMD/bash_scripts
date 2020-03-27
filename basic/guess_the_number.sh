#!/bin/bash

randInt=$((($RANDOM%25)+1))
cont=0

echo "-------INIT-------- $randInt ---"

while [ $cont -le 25 ]; do
  echo " \|/--------------\|/ "
  ((cont=$cont+1))
  
  # Leggere un interro
  read -p '    Indovina il numero [0, 25]: ' -a number

  if [ $number -eq $randInt ]; then
    
    echo ""
    echo "  Complimenti, hai indovinato"
    echo "    il numero  ★ $randInt ★"
    echo "      in  ★ $cont tentativi ★  !!!"
    echo " /|\--------------/|\ "

    break

  fi

  echo ""
  echo "    ☠️  Errato ! ☠️"
  echo "    Inserisci un altro numero ([0, 25]) !"
  echo " /|\--------------/|\ "

done 
 
echo "-------FINE--------"
