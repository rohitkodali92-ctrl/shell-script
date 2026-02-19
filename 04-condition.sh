#!/bin/bash

echo "plese enter the number"
read NUMBER

if [ $((NUMBER % 4)) -eq 0 ]; then
    echo "given number $NUMBER is EVEN"
else
    echo "given number $NUMBER is ODD"
fi