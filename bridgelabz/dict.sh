#! /bin/bash -x

declare -A arrayname

arrayname["name1"]="sachin"
arrayname["name2"]="lokesh"
arrayname["name3"]="sanju"
arrayname["name4"]="geetha"

#echo ${!arrayname[@]}

for key in "${!arrayname[@]}";
do
  echo "${arrayname[$key]}"
done

declare -A animals=( ["moo"]="cow" ["woof"]="dog")

for sound in "${!animals[@]}";
do
   echo "$sound - ${animals[$sound]}"; 
done
