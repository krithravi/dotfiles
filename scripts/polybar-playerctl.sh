#!/bin/sh

PLAYER=$1

if [ "$(pidof "$PLAYER")" != "" ];
then
	echo " $(playerctl --player="$PLAYER" status)"
else
	echo "🗙"
fi

