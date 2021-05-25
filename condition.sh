#!/bin/bash -x
isFulltime=1
isParttime=2
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
random=$((RANDOM%3))
case $random in
	1)echo "Employee is fulltime"
	CalcWage 8
	;;
	2)echo "Employee is Parttime"
	CalcWage 4
	;;
	*)echo "Employee is Absent "
	  echo " Wage is 0"
	;;
esac

