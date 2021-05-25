#!/bin/bash -x
empRatePerHr=20
function CalcWage()
{
   Days=0
   empHrs=0
   declare -A store
   daily_salary=$(($empRatePerHr*$1))
   while [[ $empHrs -lt 100 && $Days!=20 ]]
   do
      wage=$(($wage+$daily_salary))
      empHrs=$(($empHrs+$1))
      Days=$(($Days+1))
      store[" $Days,$daily_salary "]=$wage
   done
 echo ${!store[@]}
}

function getWorkHrs()
{
 read -p "Enter days Working hours" hr
 return $hr
}

getWorkHrs
hours=$?
CalcWage $hours
