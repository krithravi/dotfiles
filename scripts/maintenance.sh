#!/bin/bash 
FILENAME=~/log.txt

echo `date '+%a %d %b %Y %T %Z'` >> $FILENAME
echo '    started' >> $FILENAME
sudo pacman -Syu --noconfirm
sudo pacman -Qdtq --noconfirm | sudo pacman -Rs --noconfirm -
echo '    exited' >> $FILENAME
