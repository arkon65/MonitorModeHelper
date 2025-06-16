# Script to set wireless interface into monitor mode - replace 'wlan0' with your wireless interface name.
# This script will bring down the wireless interface, kill any processes that might interfere with monitor mode,
# set the interface to monitor mode, and bring it back up.
# It will also print the status of each command executed.

# Note: This script is intended for use on Linux systems with a compatible wireless card.

# Dependencies: airmon-ng, iwconfig, ifconfig
# Usage: sudo ./monmode.sh

#!/bin/bash

success=true

sudo ifconfig wlan0 down
if [ $? -eq 0 ]; then
    echo "wlan0 down OK"
else
    echo "wlan0 down FAIL"
    success=false
fi

sudo airmon-ng check kill
if [ $? -eq 0 ]; then
    echo "airmon-ng check kill OK"
else
    echo "airmon-ng check kill FAIL"
    success=false
fi

sudo iwconfig wlan0 mode monitor
if [ $? -eq 0 ]; then
    echo "iwconfig wlan0 mode monitor OK"
else
    echo "iwconfig wlan0 mode monitor FAIL"
    success=false
fi

sudo ifconfig wlan0 up
if [ $? -eq 0 ]; then
    echo "ifconfig wlan0 up OK\n"
else
    echo "ifconfig wlan0 up FAIL"
    success=false
fi

if $success; then
	echo 'Successfull monitor mode'
fi
