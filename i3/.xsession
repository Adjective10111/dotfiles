#!/bin/bash

if [ -f /etc/gdm3/Xsession ]; then
	/etc/gdm3/Xsession
fi
if [ -f /etc/X11/Xsession ]; then
	/etc/X11/Xsession 
fi

generator="$HOME/.config/i3/config.gen"
if [ -f $generator]; then
	$generator
fi
