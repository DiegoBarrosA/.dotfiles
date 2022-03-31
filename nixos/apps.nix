{ config, pkgs, ... }:
{
config = {
  nixpkgs.config.allowUnfree = true;
     environment.systemPackages = with pkgs;  [
     mpv
     firefox-wayland
     gimp
     shotwell
     transmission-gtk 
     keepassxc   
     vscodium
     google-chrome
     blender
     github-desktop
     spotify
     neovide 
     joplin-desktop
     nicotine-plus
   ];


 };

}
