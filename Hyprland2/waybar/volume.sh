#!/bin/sh

[ $(pulsemixer --get-mute) = 1 ] && echo ﱝ && exit

vol="$(pulsemixer --get-volume | awk '{if (NR==1) print $1}')"

if [ "$vol" -gt "100" ]; then
	icon="!墳"
elif [ "$vol" -gt "70" ]; then
	icon="墳"
elif [ "$vol" -gt "30" ]; then
	icon="奔"
elif [ "$vol" -gt "0" ]; then
	icon="奄"
else
        echo 婢 $vol% && exit
fi

echo "$icon $vol%"
