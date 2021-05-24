#!/bin/bash
isPresent=1
isAbsent=0
Ran=$((RANDOM%2))
if [ $Ran -eq $isPresent ]
then
	echo $Ran
	echo " Employee is present "
else
	echo $Ran
	echo " Employee is absent "
fi
