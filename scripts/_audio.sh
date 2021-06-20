#!/bin/bash

VOL="$(pulsemixer --get-volume | awk '{print $1}')"
MUTED="$(pulsemixer --get-mute)"

VOLSTATE="?"

[ "$VOL" -le 0  ] && VOLSTATE="婢"
[ "$VOL" -le 20 ] && VOLSTATE="奄"
[ "$VOL" -le 60 ] && VOLSTATE="奔"
[ "$VOL" -gt 60 ] && VOLSTATE="墳"

[ "$MUTED" -ge 1 ] && VOLSTATE="婢" && VOLPREFIX="^c#fb4934^"

echo " ${VOLPREFIX}${VOL}% ${VOLSTATE} ^d^ "

