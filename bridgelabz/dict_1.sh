#! /bin/bash -x

declare -A arrayname

arrayname["name1"]="sachin"
arrayname["name2"]="lokesh"
arrayname["name3"]="sanju"
arrayname["name4"]="geetha"

#echo ${!arrayname[@]}

#echo "${arrayname##;*}"

#for key in "${!arrayname[@]}";
#do
  #echo "${arrayname[$key]}"
#done

for DATA in "${arrayname[@]}" ;
do
   KEYS+=("${DATA%%:*}")
   VALUES+=("${DATA##*:}") 
done

echo ${KEYS[*]}
echo ${VALUES[*]}
