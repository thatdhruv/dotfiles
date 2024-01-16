#!/bin/sh

if [ -d "~/Screenshots" ] ; then
    scrot '%d%m%Y%H%M%S_$wx$h.png' -e 'mv $f ~/Screenshots/ && notify-send "Screenshot saved!" "Screenshot saved as $f"'
else
    mkdir -p ~/Screenshots
    scrot '%d%m%Y%H%M%S_$wx$h.png' -e 'mv $f ~/Screenshots/ && notify-send "Screenshot saved!" "Screenshot saved as $f"'
fi
