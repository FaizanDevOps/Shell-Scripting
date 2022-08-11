#!/bin/bash


a=1222
b=224
c=21


if [[ $a -gt $b && $a -gt $c ]]
then
echo "a is  biggest"
elif [[ $b -gt $a && $b -gt $c ]]
then 
	echo " b is biggest"
else 
	echo "c is biggest"
	fi

