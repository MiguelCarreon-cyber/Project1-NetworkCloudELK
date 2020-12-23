#!/bin/bash

# Autor:  Miguel Carreon
# Used for: Extract time and dealer name that was at 5am, 8am, 2pm, 8pm, 11pm the March10. Print output to file
# (strucutre create different than the other scripts just for training purpose)
# Last modification: Comments added

echo 'Date->0310' > Dealers_working_during_losses
awk '{print $1 " " $2 "\t" $5 " " $6}' 0310_Dealer_schedule | grep -Ei '05:00:00 AM|08:00:00 AM|02:00:00 PM|08:00:00 PM|11:00:00 pm' >> Dealers_working_during_losses

