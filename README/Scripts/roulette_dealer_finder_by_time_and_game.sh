#!/bin/bash

# Autor:  Miguel Carreon
# Used for: Script created to find a Dealer by game, parameters are Date(1), Time(2&3), Game(4)
#          (column by game 3=BlackJack, 5=Roulette, 7=Texas)
# Example how to run:   ./roulette_dealer_finder_by_time_and_game.sh 0315 12:00:00 PM 3
# Last modification: Comments added

echo 'Find Dealer by Game'  
echo "Date->$1" 

ncol=`expr $4 + 1`
# echo "newcol= $ncol"

head -n 1 $1_Dealer_schedule | awk '{print $1 " " $2 "\t" $'$4' " " $'$ncol'}' 

awk '{print $1 " " $2 "\t" $'$4' " " $'$ncol'}' $1_Dealer_schedule | grep $2' '$3 

