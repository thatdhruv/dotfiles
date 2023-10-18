#!/bin/sh

notify-send "The current wallpaper is" "$(cat ~/.fehbg | grep -o '[0-9]\+')"
