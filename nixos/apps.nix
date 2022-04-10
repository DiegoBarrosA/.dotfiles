{ config, pkgs, ... }:
{
config = {
  nixpkgs.config.allowUnfree = true;
     environment.systemPackages = with pkgs;  [
     librewolf-wayland
     shotwell
     transmission-gtk 
     keepassxc   
     vscodium
     blender
     neovide 
     joplin-desktop
     libreoffice-fresh
     mullvad-vpn
   ];


 };

}
