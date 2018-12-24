#!/usr/bin/bash

# Script to switch openpilot repos loaded on the EON
#
# This script should replace the file on your EON in /data/data/com.termux/files/
# 
# Note: This does not work on LeEco Le Pro 3 (since it does not have this switch)
# 
# Usage:
#    You need to clone the repos with the branch you want into the following directories:
#    /data/openpilot.1   
#    /data/openpilot.2
#    /data/openpilot.3
#
# Then boot up your EON with the switch (going from left to right) in position 1,2,3 to load that branch of openpilot.

switchstate=`cat /sys/devices/virtual/switch/tri-state-key/state`
   
rm -f /data/openpilot
ln -fs /data/openpilot.$switchstate /data/openpilot
cd /data/openpilot
exec ./launch_openpilot.sh
