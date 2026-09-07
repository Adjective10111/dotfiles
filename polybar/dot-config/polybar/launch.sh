#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit

polybar -r topbar 2>&1 | tee -a /tmp/polybar-topbar.log & disown
