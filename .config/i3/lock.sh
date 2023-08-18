#!/bin/bash

TEXT='#64db98'
WRONGCOLOR='#6d1521'
RINGVER='#126d61'
BACKSPACE='#145e72'
KEYPRESS='#237762'
BACKGROUND='#000000c4'

i3lock \
-i /home/krithika/dotfiles/desktops/cropped_bagend.jpg -t -e -k \
--insidever-color=$BACKGROUND \
--ringver-color=$RINGVER \
--verif-text="Verifying..." \
--verif-color=$TEXT \
--insidewrong-color=$BACKGROUND \
--ringwrong-color=$WRONGCOLOR \
--wrong-text="Wrong" \
--wrong-color=$TEXT \
--time-color=$TEXT \
--date-color=$TEXT \
--date-str="%A, %B %d" \
--noinput-text="Empty" \
--radius=120 \
--indicator \
--ring-width=11 \
--bshl-color=$BACKSPACE \
--ring-color=$TEXT \
--keyhl-color=$KEYPRESS
