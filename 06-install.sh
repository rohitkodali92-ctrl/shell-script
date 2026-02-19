#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR::run the script with root or user sudo"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: install mysql fail"
    exit 1
else 
    echo "install mysql done"
fi

