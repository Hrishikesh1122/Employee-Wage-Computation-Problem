#!/bin/bash -x
isFulltime=1
isParttime=2
empRatePerHr=20
random=$((RANDOM%3))
case $random in
	1)empHrs=8
	echo "Employee is fulltime  "
	;;
	2)empHrs=4
	echo "Employee is Parttime "
	;;
	*)echo "Employee is Absent "
	empHrs=0
	;;
esac
salary=$(($empHrs*$empRatePerHr))
echo $salary
