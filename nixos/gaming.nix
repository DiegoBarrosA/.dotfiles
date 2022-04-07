{ config, pkgs, ... }:
{
  config = {
    programs.steam.enable = true;
    environment.systemPackages = with pkgs; [
    lutris
    minecraft
  ];
  };

}

