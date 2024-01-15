#!/bin/sh

if [ -d "~/screenshots" ] ; then
    scrot '%d%m%Y%H%M%S_$wx$h.png' -e 'mv $f ~/screenshots/ && notify-send "Screenshot saved!" "Screenshot saved as $f"'
else
    mkdir -p ~/screenshots
    scrot '%d%m%Y%H%M%S_$wx$h.png' -e 'mv $f ~/screenshots/ && notify-send "Screenshot saved!" "Screenshot saved as $f"'
fi
