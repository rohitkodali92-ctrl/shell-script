#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR::run the script with root or user sudo"
    exit 1
fi
VALEDATE(){ #functions receive inputs through args just like shell scripts args
    if [ $1 -ne 0 ]; then
    echo "ERROR:: install $2 fail"
    exit 1
else 
    echo "install $2 done"
fi
}
dnf install mysql -y
VALEDATE $? "mysql"

dnf install nginx -y
VALEDATE $? "nginx"