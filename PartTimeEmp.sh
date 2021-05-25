#!/bin/bash
PartTimeHr=4
WagePerHr=20
WagePerDay=$(($PartTimeHr*$WagePerHr))
echo $WagePerDay
