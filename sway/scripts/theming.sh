#/bin/sh
nix-shell -p glib --run "
    gsettings set org.gnome.desktop.interface gtk-theme 'Materia-dark'
    gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'                                            
    gsettings set org.gnome.desktop.interface cursor-theme 'phinger-cursors-light'
    gsettings set org.gnome.desktop.interface font-name 'Iosevka 13'
    gsettings set org.gnome.desktop.interface cursor-size 32
    "
