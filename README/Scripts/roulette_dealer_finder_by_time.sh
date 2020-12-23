#!/bin/bash

# Autor:  Miguel Carreon
# Used for: Script create to find a Dealer, parameters are Date(1), time(2&3)
# Example how to run: ./roulette_dealer_finder_by_time.sh 0315 12:00:00 PM
# Last modification: Comments added

echo 'Find Dealer'  
echo "Date->$1" 
awk '{print $1 " " $2 "\t" $5 " " $6}' $1_Dealer_schedule | grep $2' '$3 
