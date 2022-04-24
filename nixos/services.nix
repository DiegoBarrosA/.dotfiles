{ config, pkgs, ... }:
{
services = {
     syncthing = {
        enable = true;
        user = "tsuneko";
        dataDir = "/home/tsuneko/Syncthing";
        configDir = "/home/tsuneko/.config/syncthing";  
};

    printing.enable = true;
    openssh.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
    devmon.enable = true;
    flatpak.enable = true;
    udev.packages = [ pkgs.qmk-udev-rules ]; 

  };
    programs.gphoto2.enable = true;
    hardware.bluetooth.enable = true;
  

  }

