#!/bin/bash

# Autor:  Miguel Carreon
# Used for: Extract time and dealer name that was at 5am, 8am, 2pm the March10. Print output to file
# (strucutre create different than the other scripts just for training purpose)
# Last modification: Comments added

echo ' '          >> Dealers_working_during_losses
echo 'Date->0315' >> Dealers_working_during_losses
awk '{print $1 " " $2 "\t" $5 " " $6}' 0315_Dealer_schedule | grep '05:00:00 AM'  >> Dealers_working_during_losses
awk '{print $1 " " $2 "\t" $5 " " $6}' 0315_Dealer_schedule | grep '08:00:00 AM'  >> Dealers_working_during_losses
awk '{print $1 " " $2 "\t" $5 " " $6}' 0315_Dealer_schedule | grep '02:00:00 PM'  >> Dealers_working_during_losses
