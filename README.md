# apche_access_logger

This code is used to fetch information of logged in details from access.log file and write sort and grep only the new ip addresses and write to input.txt file 
After the unique IP address is fetched we then use the tool 'curl' to get information from an IP API
then we check the current IP in input.txt file and if new IP is found ,it prints it


