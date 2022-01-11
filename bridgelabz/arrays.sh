#! /bin/bash -x

# indirect declaration
# Arrayaname[index]=value

Arrayname[0]="hello"
Arrayname[1]="hi"
Arrayname[2]="Welcome"

echo ${Arrayname[@]}

# explicit declaration
# declare -a Arrayaname

declare -a arrayname

echo ${arrayname[@]}

# Compund assignment
# Arrayaname=(value1, value2, value3, value4, .... , value-n)
# or
# Arrayaname=([1]=v1,[2]=v2,[3]=v3, .....,[n]=vn)


Arrayname=(1 2 3 4 5 6 7 8 9 10 )

echo ${Arrayname[4]}

Arrayaname=( [1]=v1 [2]=v2 [3]=v3 )

echo ${Arrayaname[2]}
