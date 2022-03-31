{ config, pkgs, ... }:
{
services = {

     syncthing = {
        enable = true;
        user = "tsuneko";
   dataDir = "/home/tsuneko/Syncthing";    # Default folder for new synced folders
        configDir = "/home/tsuneko/.config/syncthing";  
                };

    printing.enable = true;
    openssh.enable = true;
    onedrive.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
    devmon.enable = true;
    flatpak.enable = true;
  };
programs.gphoto2.enable = true;
 }

