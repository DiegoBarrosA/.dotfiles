{ config, pkgs, ... }: {
  services = {
    syncthing = {
      enable = true;
      user = "diego";
      configDir = "/home/diego/.config/syncthing";

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

