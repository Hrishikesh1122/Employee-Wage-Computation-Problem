#!/bin/bash 
empRatePerHr=20
function CalcWage()
{
   Days=0
   empHrs=0
   daily_salary=$(($empRatePerHr*$1))
   while [[ $empHrs -lt 100 && $Days!=20 ]]
   do
      wage=$(($wage+$daily_salary))
      empHrs=$(($empHrs+$1))
      Days=$(($Days+1))
   done
   echo "Wage per day is $daily_salary and total wage is $wage "

}

function getWorkHrs()
{
 read -p "Enter days Working hours" hr
 return $hr
}

getWorkHrs
hours=$?
CalcWage $hours
