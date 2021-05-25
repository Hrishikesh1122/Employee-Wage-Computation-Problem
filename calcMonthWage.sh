#!/bin/bash -x
isFulltime=1
isParttime=2
empRatePerHr=20
WorkingDays=20
random=$((RANDOM%3))
case $random in
	1)empHrs=8
	Time="Filltime"
	echo "Employee is fulltime  "
	;;
	2)empHrs=4
	Time="Parttime"
	echo "Employee is Parttime "
	;;
	*)echo "Employee is Absent "
	empHrs=0
	;;
esac
salary=$(($empHrs*$empRatePerHr*$WorkingDays))
echo "Monthly wage of a $Time employee is $salary "
