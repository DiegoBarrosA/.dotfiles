#!/bin/sh

entries=" Logout\n Suspend\n Reboot\n shutdown"

selected=$(echo -e $entries|wofi --width 250 --height 200 -p "What to do?" --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
