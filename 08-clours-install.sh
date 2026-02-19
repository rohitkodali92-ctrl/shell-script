#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0"
 
if [ $USERID -ne 0 ]; then
    echo "ERROR::run the script with root or user sudo"
    exit 1
fi
VALEDATE(){ #functions receive inputs through args just like shell scripts args
    if [ $1 -ne 0 ]; then
    echo -e "ERROR:: install $2 ... $R fail $N"
    exit 1
else 
    echo -e "install $2 $G done $N"
fi
}

dnf list installed mysql
if [ $? -ne 0 ]; then
#install if it is not found
   dnf install mysql -y
   VALEDATE $? "mysql"
else 
    echo -e "mysql alredy exist ... $y skipping $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALEDATE $? "nginx"
else 
    echo -e "nginx alredy exist ... $y skipping $N"
fi