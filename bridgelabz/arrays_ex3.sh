#! /bin/bash -x

counter=0

Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Mango"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]="Grapes"

echo ${Fruits[*]}

