#!/bin/bash

# Volume state output
VOL="$(pulsemixer --get-volume | awk '{print $1}')"

if [ "$VOL" -le 0 ]; then
  VOLSTATE="婢"
elif [ "$VOL" -le 30 ]; then
  VOLSTATE="奄" # ﱝ
elif [ "$VOL" -le 70 ]; then
  VOLSTATE="奔"
elif [ "$VOL" -gt 70 ]; then
  VOLSTATE="墳"
else
  VOLSTATE="?"
fi

echo " ${VOL}% ${VOLSTATE}  "
