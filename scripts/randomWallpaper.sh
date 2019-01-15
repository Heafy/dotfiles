#!/bin/bash
while [ true ]
do
# Custom directory
DIR="/home/$USER/Pictures/Wallpapers"
PIC=$(ls $DIR/* | shuf -n 1)
# Set the wallpaper and the color scheme
wal -i $PIC
# For lock screen
# Creates the image cache for the wallpaper
betterlockscreen -u $PIC
#echo "$PIC"
# Wait 2 hours
sleep 3600
done