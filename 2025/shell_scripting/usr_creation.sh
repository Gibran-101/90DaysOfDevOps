#!/bin/bash

usr="$1"
passwd="$2"

validate=$(getent passwd "$usr")

if [ -n "$validate" ]; then
    echo "The user already exists"
    exit 1
fi

sudo useradd -m $1 -s /bin/bash

echo "$1:$2" | sudo chpasswd
