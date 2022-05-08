#!/bin/sh
# Times the screen off and puts it to background
# Locks the screen immediately
swaylock -i $HOME/.dotfiles/sway/resources/lock.jpg --indicator-y-position 980 --indicator-x-position 100 --key-hl-color 00ff6f --ring-clear-color ff3000 --font Iosevka \
--font-size 14  --inside-clear-color ff300050 --inside-color ffffff00 \
--layout-bg-color 121212 --ring-color 121212 -r \
--indicator-radius 35 --indicator-thickness 10 \
--ring-ver-color 006fff 
# Kills last background task so idle timer doesn't keep running
kill %%

