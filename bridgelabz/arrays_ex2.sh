#! /bin/bash -x

numbers=( 1 2 3 4 5 6 7 8 9 10 )

echo ${#numbers[@]}


# delete array element

unset numbers[4]

echo length: ${#numbers[@]}

echo values :- ${numbers[@]}
