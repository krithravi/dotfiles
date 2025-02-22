#!/bin/sh

# Handle scroll actions
case $1 in
    "--up")
        pamixer --increase 5
        ;;
    "--down")
        pamixer --decrease 5
        ;;
    "--mute")
        pamixer --toggle-mute
        ;;
    *)
        # Get current volume and mute status
        VOLUME=$(pamixer --get-volume)
        MUTED=$(pamixer --get-mute)

        # Set parameters for the bar
        BAR_WIDTH=20
        FILL_CHAR=":"
        EMPTY_CHAR=":"
        INDICATOR="🦎"

        # Calculate the number of fill characters
        FILL_LENGTH=$(( VOLUME * BAR_WIDTH / 100 ))
        EMPTY_LENGTH=$(( BAR_WIDTH - FILL_LENGTH ))

		BAR=""
        if [ "$MUTED" = "true" ]; then
            BAR=" 🔇 "
        else
			BAR=" 🔊 "

        fi
		BAR+=$(printf "%${FILL_LENGTH}s" | tr ' ' "$FILL_CHAR")
		BAR+="$INDICATOR"
		BAR+=$(printf "%${EMPTY_LENGTH}s" | tr ' ' "$EMPTY_CHAR")
		# BAR+=" $VOLUME%"
		echo " $BAR"
        ;;
esac
