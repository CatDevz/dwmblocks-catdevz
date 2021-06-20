#!/bin/bash

CAP="$(cat /sys/class/power_supply/BAT*/capacity)"
STATUS="$(cat /sys/class/power_supply/BAT*/status)"
STATE="^c#d3869b^"

if [ "$STATUS" = "Full" ]; then
    ICON=""; STATE="^c#b8bb26^"
elif [ "$STATUS" = "Discharging" ]; then
    ICON="" && STATE="^c#fb4934^";
    [ "$CAP" -ge 10  ] && ICON="" && STATE="^c#fb4934^";
    [ "$CAP" -ge 20  ] && ICON="" && STATE="^c#fb4934^";
    [ "$CAP" -ge 30  ] && ICON="" && STATE="^c#fb4934^";
    [ "$CAP" -ge 40  ] && ICON="" && STATE="^c#fabd2f^";
    [ "$CAP" -ge 50  ] && ICON="" && STATE="^c#fabd2f^";
    [ "$CAP" -ge 60  ] && ICON="" && STATE="^c#fabd2f^";
    [ "$CAP" -ge 70  ] && ICON="" && STATE="^c#b8bb26^";
    [ "$CAP" -ge 80  ] && ICON="" && STATE="^c#b8bb26^";
    [ "$CAP" -ge 90  ] && ICON="" && STATE="^c#b8bb26^"; 
elif [ "$STATUS" = "Not Charging"  ]; then
    ICON=""
elif [ "$STATUS" = "Charging" ]; then
    ICON=""
fi

echo "${STATE}${CAP}% ${ICON}^d^ "

