#! /bin/bash -x

# CONSTANTS
IS_FULLTIME=2
IS_PARTTIME=1
EMP_PER_WAGE=20
MAX_WRK_DAYS=20
MAX_WRK_HRS=40

#VARIABLES
totalWrokingdays=0
totalWorkinghrs=0

function calculateWorkingHour() {
	case $1 in
		0)
			workingHour=0;
			;;

		1)
			workingHour=8;
			;;
		2)
			workingHour=4;
			;;
	esac;
	echo $workingHour;
}

function calculateDailyWage(){
 	echo $(($1 * $EMP_PER_WAGE))
}

declare -A DailyWage

while [[ $totalWorkinghrs -lt $MAX_WRK_HRS && $totalWorkingdays -lt $MAX_WRK_DAYS ]]
do
    #((totalWorkingdays++))
   # salary=$(($perHourSalary * $wHour));
	#totalSalary=$(($totalSalary + $salary));
    wHour=$(calculateWorkingHour $((RANDOM%3)));

   ((totalWorkinghrs+=$wHour))

    #echo $totalWorkinghrs

    empDailyWage=$(calculateDailyWage $wHour);
    DailyWage[$wHour-$totalWorkingdays]=$empDailyWage
   ((totalWorkingdays++))
done

for each in "${!DailyWage[@]}";
do 
   echo $each - ${DailyWage[$each]}
done
