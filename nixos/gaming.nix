{ config, pkgs, lib, ... }: {
  config = {

    nixpkgs.overlays = [
      (import (builtins.fetchTarball
        "https://github.com/PolyMC/PolyMC/archive/develop.tar.gz")).overlay
    ];
nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
      "steam"
      "steam-original"
      "steam-runtime"
    ];
    environment.systemPackages = with pkgs; [ lutris polymc minetest ];
  };

}

