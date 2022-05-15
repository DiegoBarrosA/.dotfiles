{ config, pkgs, ... }: {
  config = {

    nixpkgs.overlays = [
      (import (builtins.fetchTarball
        "https://github.com/PolyMC/PolyMC/archive/develop.tar.gz")).overlay
    ];

    programs.steam.enable = true;
    environment.systemPackages = with pkgs; [ lutris polymc ];
  };

}

