#!/bin/sh
# Times the screen off and puts it to background
# Locks the screen immediately
swaylock --indicator-y-position 540  --indicator-x-position 1280 \
 -S --effect-blur 5x5 --fade-in 1  \
 --clock --indicator \
 --datestr '%d %B %Y' \
--key-hl-color 06ff70 --ring-clear-color ff0000 --font Iosevka \
--ring-color 00000070 \
--font-size 50  --inside-clear-color ff0000 --inside-color 12121270 \
--text-color ffffffff \
--ring-color 12121200  \
--indicator-idle-visible \
--indicator-radius 150 --indicator-thickness 10  -r \
--separator-color 12121200 \
--ring-ver-color 006fff --inside-ver-color 006fff  
# Kills last background task so idle timer doesn't keep running
kill %%

