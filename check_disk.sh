#!/bin/bash

df -H | awk '{print $5 " " $1}' | while read output;
do 
#	echo " Disk Details: $output "
	usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
	file_sys=$(echo $output | awk '{print $2}')
#echo "$usage"
if [ $usage -gt 90 ]
then
echo "Critical for $file_sys"
fi
done
