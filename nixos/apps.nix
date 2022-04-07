{ config, pkgs, ... }:
{
config = {
  nixpkgs.config.allowUnfree = true;
     environment.systemPackages = with pkgs;  [
     mpv
     librewolf-wayland
     krita
     shotwell
     transmission-gtk 
     keepassxc   
     vscodium
     blender
     github-desktop     
     neovide 
     joplin-desktop
     qbittorrent
     libreoffice-fresh
   ];


 };

}
