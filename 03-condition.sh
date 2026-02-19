#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo "given number $NUMBER is less than 10"
elif [ $NUMBER -ne 15 ]; then
    echo "given number $NUMBER is not equal to 15"
else
    echo "given number $NUMBER is greater then or equal to 10 15"
fi

#greater than= -gt
#less than= -lt
#equal then= -eq
#not equal to= -ne