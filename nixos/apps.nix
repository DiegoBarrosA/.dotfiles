{ config, pkgs, ... }:
{
config = {
  nixpkgs.config.allowUnfree = true;
     environment.systemPackages = with pkgs;  [
     mpv
     firefox-wayland
     krita
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
     qbittorrent
     onlyoffice-bin
   ];


 };

}
