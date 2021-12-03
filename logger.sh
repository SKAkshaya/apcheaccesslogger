#!/bin/bash

echo " Apache Access logger"
while true
do
cat accesslog.txt > input.txt 
for ip in $(cut -d' ' -f1 input.txt | sort | uniq) ;
do
    if [[ $(< ipapi.txt ) != "$ip" ]]; 
    then 
    
     echo "The new IP is : $ip"
     
    curl "https://ipapi.co/$ip/json/" >> ipapi.txt

    fi
done
            
sleep 60

done

