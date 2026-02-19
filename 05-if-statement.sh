#!/bin/bash

if [ -e /var/log/messages ]; then
    echo "file exists"
else 
    echo "file not exists"
fi