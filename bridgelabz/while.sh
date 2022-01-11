#! /bin/bash -x

counter=1

while [ $counter != 3 ]
do

   echo counter value: $counter
   ((counter++))

done
