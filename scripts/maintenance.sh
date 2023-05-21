#!/bin/bash 
FILENAME=~/log.txt

echo `date '+%a %d %b %Y %T %Z'` >> $FILENAME
echo '    started' >> $FILENAME
sudo pacman -Syu
sudo pacman -Qdtq | sudo pacman -Rs -
echo '    exited' >> $FILENAME
