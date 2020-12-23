#!/bin/bash

# Autor:  Miguel Carreon
# Used for: Extract time and dealer name that was at 5am, 8am, 2pm, 8pm, 11pm the March12. Print output to file
# (strucutre create different than the other scripts just for training purpose)
# Last modification: Comments added

echo ' '          >> Dealers_working_during_losses
echo 'Date->0312' >> Dealers_working_during_losses
awk '{print $1 " " $2 "\t" $5 " " $6}' 0312_Dealer_schedule | grep -e '05:00:00 AM' -e '08:00:00 AM' -e '02:00:00 PM' -e '08:00:00 PM' -e '11:00:00 PM' >> Dealers_working_during_losses
