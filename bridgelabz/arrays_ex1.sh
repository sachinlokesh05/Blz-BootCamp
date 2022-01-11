#! /bin/bash -x

numbers=( 1 2 3 4 5 6 7 8 9 10 )

echo ${numbers[*]}

echo ${numbers[*]:2}

#echo ${numbers[*]:start_index:end_index}

echo ${numbers[*]:1:4}

