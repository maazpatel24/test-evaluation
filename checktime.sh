#!/bin/bash

echo "Enter time in hh:mm format (00:00-23:59):"
read time

hour=$(echo $time | sed 's/:.*//')
minute=$(echo $time | sed 's/.*://')

if [ $hour -ge 00 ] && [ $hour -lt 06 ];
then
    echo "Early Morning"
elif [ $hour -ge 06 ] && [ $hour -lt 12 ];
then
    echo "Morning"
elif [ $hour -ge 12 ] && [ $hour -lt 18 ];
then
    echo "Afternoon"
elif [ $hour -ge 18 ] && [ $hour -lt 23 ];
then
    echo "Late Night"
else
    echo "In Valid time"
fi

echo "----------------"
echo $hour
echo $minute