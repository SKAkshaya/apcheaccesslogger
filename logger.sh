#!/bin/bash

echo " Apache Access logger"
while true
do
access.log > input.txt 
for ip in $(cut -d' ' -f1 input.txt | sort -u) ;
do
    curl "https://ip-api.com">>ipapi.txt

     if [[ $(ipapi.txt) != "$ip" ]];
     then
     echo "The new is : $ip"
     fi
done
            
sleep $60

done
