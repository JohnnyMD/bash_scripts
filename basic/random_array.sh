#!/bin/bash
echo "-------INIT--------"

arr=()
somma=0
media=0,0

# Crea e stampa array:
echo -n "array = [ "
for ((var = 1; var <= 20; var++)); do
  #Genera intero random in [10, 50]
  randInt=$((($RANDOM%40)+10+1))
  
  #Aggiorna l'array
  arr+=$randInt

  #Aggiorna somma e media:
  ((somma=$somma+$randInt))
  ((media=($somma+$randInt)/$var))

  echo -n "$randInt "
done
echo -n "]"


echo ""
echo ""

#Stampa media e somma
echo somma = $somma
echo media = $media

echo "-------FINE--------"
