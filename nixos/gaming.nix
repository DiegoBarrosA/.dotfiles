{ config, pkgs, lib, ... }: {
  config = {
nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
      "steam"
      "steam-original"
      "steam-runtime"
    ];
    environment.systemPackages = with pkgs; [ lutris polymc minetest ];
  };

}

