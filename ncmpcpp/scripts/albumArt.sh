#!/bin/sh

music_library="$HOME/Music"

fallback_image="~/.local/share/icons/Flatery-Indigo/apps/64/gnome-music.svg"

ffmpeg -y -i "$(mpc --format "$music_library"/%file% | head -n 1)" /tmp/mpd_cover.jpg > /dev/null 2>&1 && \

notify-send -c music -i /tmp/mpd_cover.jpg "Now Playing:" "$(mpc current)" || \

notify-send -c music -i $fallback_image "Now Playing:" "$(mpc current)"
