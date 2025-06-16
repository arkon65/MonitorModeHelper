# This script restarts the networking and NetworkManager services on a Linux system.
# It checks the success of each command and prints appropriate messages.
#
# Dependencies: sudo, service
# Usage: sudo ./rstwlan.sh


#!/bin/bash

success=true

sudo service networking restart
if [ $? -eq 0 ]; then
    echo "Networking Restarted OK"
else
    echo "Networking Restart FAIL"
    success=false
fi

sudo service NetworkManager restart
if [ $? -eq 0 ]; then
    echo "NetworkManager Restarted OK\n"
else
    echo "NetworkManager Restart FAIL"
    success=false
fi

if success==true; then
	echo "Network Restart Successful"
fi	
