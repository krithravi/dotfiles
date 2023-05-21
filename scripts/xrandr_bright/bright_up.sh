#! /bin/bash
setb () {
	b=$(xrandr --verbose | grep -m 1 -w connected -A8 | grep Brightness | cut -f2- -d: | tr -d ' ')
	b=$(echo "$b+$1" | bc -l)
	xrandr --output eDP1 --brightness $b
	echo $b
}

setb 0.1
