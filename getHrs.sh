#!/bin/bash -x
empRatePerHr=20
function CalcWage()
{
   Days=0
   empHrs=$1
   while(( $empHrs!=100 && $Days!=20 ))
   do
      salary=$(($empRatePerHr*$1))
      wage=$(($wage+$salary))
      empHrs=$(($empHrs+$1))
      Days=$(($Days+1))
   done
   echo " Total Wage is $wage "
}

function getWorkHrs()
{
 read -p "Enter day's working hours " hr
 return $hr
}
getWorkHrs
Hours=$?
CalcWage $Hours

