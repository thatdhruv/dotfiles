#!/bin/sh

feh --bg-scale "${HOME}/wallpapers/$(printf "%04d" $(shuf -i 0-310 -n 1)).jpg"
