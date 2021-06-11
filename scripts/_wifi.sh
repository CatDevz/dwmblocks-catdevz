#!/bin/bash

# Wifi SSID and strengh

STR="$(cat /proc/net/wireless | grep wlp | awk '{print $4}' | sed 's/[^0-9]//g')"
STR=$((STR-30))
SSID="$(nmcli c | grep wlp | awk '{print $1}')"
ISTATE="^c#8ec07c^"

[ "$STR" -lt 35 ] && ICON=" " && ISTATE="^c#8ec07c^"
[ "$STR" -ge 35 ] && ICON="說" && ISTATE="^c#fabd2f^"
[ "$STR" -ge 55 ] && ICON="罹 " && ISTATE="^c#fe8019^"

curl www.google.com &>/dev/null || ICON=" " ISTATE="^c#fe8019^"

[ -z $SSID ] && SSID="off" && ICON="ﲁ " && ISTATE="^c#fb4934^"

echo " ${ISTATE}${SSID} ${ICON}^d^ "
