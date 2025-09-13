#!/usr/bin/env bash

if [ -n "$1" ]; then
	dunstctl set-paused toggle
else
	state=`dunstctl is-paused`
	if $state; then
		echo ""
	else
		echo ""
	fi
fi

