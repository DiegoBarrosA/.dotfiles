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

  };
    programs.gphoto2.enable = true;
    hardware.bluetooth.enable = true;
  

  }

