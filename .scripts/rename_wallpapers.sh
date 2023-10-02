#!/bin/sh

a=$((`ls -l | wc -l`-1))
b=${#a}

c=1
for i in *.jpg; do
	new=$(printf "%0$(echo $b)d.jpg" "$c")
	mv -i -- "$i" "$new"
	let c=c+1
done
