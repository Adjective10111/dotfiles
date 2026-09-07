#!/usr/bin/env bash

brightness=$(brightnessctl -m i | cut -s -f 4 -d ',' | cut -f 1 -d '%' )
if [ $brightness -le 25 ]; then
	echo "%{F#707880}󰃞 $brightness%"
elif [ $brightness -lt 50 ]; then
	echo "%{F#387CD3}󰃟%{F-} %{F#707880}$brightness%"
else
	echo "󰃠 %{F#707880}$brightness%"
fi
%{F#707880}%ifname%%{F-} %{F#387CD3}%essid%%{F-} %local_ip%
