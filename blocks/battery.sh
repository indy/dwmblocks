#!/bin/sh

if [ -d "/sys/class/power_supply/BAT0" ]
then
    read -r status </sys/class/power_supply/BAT0/status
    read -r capacity </sys/class/power_supply/BAT0/capacity
    printf "Battery %s: %s%%" "$status" "$capacity"
else
    printf ""
fi
