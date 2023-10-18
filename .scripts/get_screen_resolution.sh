#!/bin/sh

notify-send "The current screen resolution is" "$(xrandr | grep '*' | awk '{print $1}')"
