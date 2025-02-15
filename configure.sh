#!/bin/bash

read -p "Enter your domain: " dans
if [[ $dans = "" ]]; then
	echo "You did not enter your domain!"
	exit 1
fi

sed -i 's/R_DOMEN/'$dans'/g' conf/nginx/nginx.conf
sed -i 's/R_DOMEN/'$dans'/g' docker-compose.yml