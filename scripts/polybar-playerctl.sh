#!/bin/sh

PLAYER=$1

if [ "$(pidof "$PLAYER")" != "" ];
then
	echo " $PLAYER: $(playerctl --player="$PLAYER" status)"
else
	echo "🗙"
fi

