$!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR::run the script with root"
fi

dnf install mysql -y

if [ $? ]; then
    echo "ERROR:: install mysql fail"
    exit 1
else 
    echo "install mysql done"
fi

